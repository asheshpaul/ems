import 'package:ems/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SaveButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6))),
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.secondary,
            padding: EdgeInsets.zero),
        onPressed: onPressed,
        child: Text("Save"),
      ),
    );
  }
}
