import 'package:ems/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6))),
            backgroundColor: AppColors.secondary,
            foregroundColor: AppColors.primary,
            padding: EdgeInsets.zero),
        onPressed: () => Navigator.pop(context),
        child: Text("Cancel"),
      ),
    );
  }
}