import 'package:ems/presentation/views/widgets/date_picker_popup.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String) updateDate;
  final bool isNoDate;

  const DatePickerTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.updateDate,
    this.isNoDate=false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Image.asset(
            'assets/calender.png',
            height: 10,
          ),
        ),
      ),
      onTap: () async {
        final selectedDate = await showDialog<DateTime>(
          context: context,
          builder: (context) => DatePickerPopup(isNoDate: isNoDate),
        );

        if (selectedDate != null) {
          final formattedDate = DateFormat('d MMM, yyyy').format(selectedDate);
          controller.text = formattedDate;
          updateDate(formattedDate);
        }
      },
    );
  }
}
