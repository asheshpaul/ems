import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  final TextEditingController _dateController = TextEditingController();

  Future<void> _showDatePickerDialog() async {
    DateTime? selectedDate = await showDialog(
      context: context,
      builder: (context) => CustomDatePickerPopup(),
    );

    if (selectedDate != null) {
      setState(() {
        _dateController.text = DateFormat('d MMM yyyy').format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Date Picker")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextFormField(
          controller: _dateController,
          readOnly: true,
          onTap: _showDatePickerDialog,
          decoration: InputDecoration(
            labelText: "Select Date",
            suffixIcon: Icon(Icons.calendar_today),
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

class CustomDatePickerPopup extends StatefulWidget {
  const CustomDatePickerPopup({super.key});

  @override
  State<CustomDatePickerPopup> createState() => _CustomDatePickerPopupState();
}

class _CustomDatePickerPopupState extends State<CustomDatePickerPopup> {
  DateTime _selectedDate = DateTime.now();
  bool _isDateSelected = false; // Track if the user has selected a date

  void _setDate(DateTime date) {
    setState(() {
      _selectedDate = date;
      _isDateSelected = true; // Mark date as selected
    });
  }

  DateTime _getNextWeekday(int weekday) {
    DateTime date = DateTime.now();
    while (date.weekday != weekday) {
      date = date.add(Duration(days: 1));
    }
    return date;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Quick Select Buttons
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildQuickButton("Today", DateTime.now()),
                _buildQuickButton("Next Monday", _getNextWeekday(1)),
                _buildQuickButton("Next Tuesday", _getNextWeekday(2)),
                _buildQuickButton(
                    "After 1 week", _selectedDate.add(Duration(days: 7))),
              ],
            ),
            SizedBox(height: 10),

            // Calendar
            TableCalendar(
              focusedDay: _selectedDate,
              firstDay: DateTime(2000),
              lastDay: DateTime(2100),
              selectedDayPredicate: (day) => isSameDay(day, _selectedDate),
              onDaySelected: (selectedDay, focusedDay) {
                _setDate(selectedDay);
              },
              headerStyle:
              HeaderStyle(formatButtonVisible: false, titleCentered: true),
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                todayDecoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Bottom Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Show selected date instead of "Cancel"
                _isDateSelected
                    ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.date_range, color: Colors.blue),
                    Text(
                      DateFormat('d MMM yyyy').format(_selectedDate),
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                )
                    : TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancel",
                      style: TextStyle(color: Colors.blue)),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, _selectedDate),
                  child: Text("Save"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickButton(String label, DateTime date) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: date == _selectedDate ? Colors.white : Colors.blue,
        backgroundColor:
        date == _selectedDate ? Colors.blue : Colors.blue.shade100,
      ),
      onPressed: () => _setDate(date),
      child: Text(label),
    );
  }
}