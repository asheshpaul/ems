import 'package:ems/presentation/cubits/date_picker_cubit.dart';
import 'package:ems/presentation/theme/app_colors.dart';
import 'package:ems/presentation/views/widgets/cancel_button.dart';
import 'package:ems/presentation/views/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class DatePickerPopup extends StatelessWidget {
  final bool isNoDate;

  const DatePickerPopup({super.key, this.isNoDate = false});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DatePickerCubit()..initSelectedDate(),
      child: BlocBuilder<DatePickerCubit, DatePickerState>(
        builder: (context, state) {
          var cubit = context.read<DatePickerCubit>();
          return state.when(
            initial: () => Center(child: CircularProgressIndicator()),
            dateSelected: (selectedDate, selectedButton) {
              return Dialog(
                backgroundColor: AppColors.white,
                insetPadding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: SizedBox(
                  width: 400,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 20),

                      // Quick Select Buttons
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          spacing: 8,
                          children: [
                            Row(
                              spacing: 16,
                              children: [
                                if (isNoDate)
                                  _QuickButton(
                                    label: "No Date",
                                    isSameDay: selectedButton == 0,
                                    onPressed: () =>
                                        cubit.setDate(DateTime.now(), index: 0),
                                  ),
                                _QuickButton(
                                  label: "Today",
                                  isSameDay: isNoDate
                                      ? selectedButton == 1
                                      : selectedButton == 0,
                                  onPressed: () => cubit.setDate(DateTime.now(),
                                      index: isNoDate ? 1 : 0),
                                ),
                                if (!isNoDate)
                                  _QuickButton(
                                    label: "Next Monday",
                                    isSameDay: selectedButton == 1,
                                    onPressed: () => cubit.setDate(
                                        cubit.getNextWeekday(1),
                                        index: 1),
                                  ),
                              ],
                            ),
                            if (!isNoDate)
                              Row(
                                spacing: 16,
                                children: [
                                  _QuickButton(
                                    label: "Next Tuesday",
                                    isSameDay: selectedButton == 2,
                                    onPressed: () => cubit.setDate(
                                        cubit.getNextWeekday(2),
                                        index: 2),
                                  ),
                                  _QuickButton(
                                    label: "After 1 week",
                                    isSameDay: selectedButton == 3,
                                    onPressed: () => cubit.setDate(
                                        selectedDate.add(const Duration(days: 7)),
                                        index: 3),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                      // const SizedBox(height: 10),

                      // Calendar
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TableCalendar(
                          focusedDay: selectedDate,
                          firstDay: DateTime(2000),
                          lastDay: DateTime(2100),
                          selectedDayPredicate: (day) =>
                              isSameDay(day, selectedDate),
                          onDaySelected: (selectedDay, focusedDay) {
                            cubit.setDate(selectedDay, index: -1);
                          },
                          headerStyle: HeaderStyle(
                            formatButtonVisible: false,
                            titleTextStyle: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            titleCentered: true,
                            headerMargin:
                                EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                            leftChevronIcon: Image.asset(
                              'assets/leftChevronIcon.png',
                              height: 16,
                            ),
                            rightChevronIcon: Image.asset(
                              'assets/rightChevronIcon.png',
                              height: 16,
                            ),
                          ),
                          calendarStyle: CalendarStyle(
                            selectedDecoration: BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                            todayTextStyle: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w500),
                            todayDecoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.primary,
                                width: 2.0,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Bottom Buttons
                      Container(
                        height: 72,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    width: 2, color: Colors.grey.shade300))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/calender.png',
                                height: 22,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                isNoDate
                                    ? 'No Date'
                                    : DateFormat('d MMM yyyy')
                                        .format(selectedDate),
                                style: const TextStyle(fontSize: 16),
                              ),
                              Spacer(),
                              CancelButton(),
                              SizedBox(width: 16),
                              SaveButton(
                                onPressed: () {
                                  isNoDate
                                      ? Navigator.pop(context)
                                      : Navigator.pop(context, selectedDate);
                                  FocusScope.of(context).unfocus();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _QuickButton extends StatelessWidget {
  final String label;
  final bool isSameDay;
  final VoidCallback onPressed;

  const _QuickButton({
    required this.label,
    required this.isSameDay,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FilledButton(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))),
          foregroundColor: isSameDay ? AppColors.white : AppColors.primary,
          backgroundColor: isSameDay ? AppColors.primary : AppColors.secondary,
        ),
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}
