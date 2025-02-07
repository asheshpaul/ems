import 'package:ems/presentation/cubits/employee_details_cubit.dart';
import 'package:ems/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

Future<dynamic> buildShowModalBottomSheet(
    BuildContext context, EmployeeDetailsCubit cubit) {
  return showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ...List.generate(
              6,
              (index) {
                List roles = [
                  "Product Designer",
                  'Full-stack Developer',
                  'Senior Software developer',
                  "Flutter Developer",
                  "QA Tester",
                  "Product Owner",
                ];
                return Container(
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 2, color: AppColors.inputBorder))),
                  child: ListTile(
                    title: Center(child: Text(roles[index])),
                    onTap: () {
                      cubit.updateRole(roles[index]);
                      Navigator.pop(context);
                      FocusScope.of(context).unfocus();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      );
    },
  );
}
