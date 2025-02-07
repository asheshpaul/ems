import 'package:ems/domain/entities/employee_model.dart';
import 'package:ems/presentation/cubits/employee_cubit.dart';
import 'package:ems/presentation/cubits/employee_details_cubit.dart';
import 'package:ems/presentation/views/widgets/cancel_button.dart';
import 'package:ems/presentation/views/widgets/date_picker_text_field.dart';
import 'package:ems/presentation/views/widgets/delete_icon_button.dart';
import 'package:ems/presentation/views/widgets/save_button.dart';
import 'package:ems/presentation/views/widgets/select_roles_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeDetailsPage extends StatelessWidget {
  final EmployeeModel? employee;

  EmployeeDetailsPage({super.key, this.employee});

  final formKey = GlobalKey<FormState>();
  final dialogKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmployeeDetailsCubit()..loadEmployee(employee),
      child: BlocConsumer<EmployeeDetailsCubit, EmployeeDetailsState>(
        listener: (context, state) {
          state.whenOrNull(
            saveSuccess: (model) async {
              context.read<EmployeeCubit>().loadEmployees();
              ScaffoldMessenger.of(context).showSnackBar(buildSnackBar());
              FocusScope.of(context).unfocus();
            },
          );
        },
        builder: (context, state) {
          final isEdit = state.employee.id != null;
          var cubit = context.read<EmployeeDetailsCubit>();
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Text("${isEdit ? 'Edit' : 'Add'} Employee Details"),
              actions: [
                if (isEdit)
                  DeleteIconButton(
                    onPressed: () {
                      context
                          .read<EmployeeCubit>()
                          .deleteEmployee(state.employee.id ?? '', context);
                      Navigator.pop(context);
                    },
                  ),
              ],
            ),
            body: LayoutBuilder(builder: (context, constraints) {
              return Center(
                child: SizedBox(
                  width:
                      constraints.maxWidth > 600 ? 500 : constraints.maxWidth,
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Employee name",
                                    prefixIcon: Icon(Icons.person_2_outlined),
                                  ),
                                  controller: cubit.nameController,
                                  onChanged: (value) {
                                    context
                                        .read<EmployeeDetailsCubit>()
                                        .updateName(value);
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter the employee name';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 16),
                                TextFormField(
                                  readOnly: true,
                                  controller: cubit.roleController,
                                  decoration: InputDecoration(
                                    hintText: "Select Role",
                                    prefixIcon: Icon(Icons.work_outline),
                                    suffixIcon: Icon(Icons.arrow_drop_down),
                                  ),
                                  onTap: () {
                                    buildShowModalBottomSheet(context, cubit);
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please select the employee role';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: [
                                    Expanded(
                                      child: DatePickerTextField(
                                        controller: cubit.joiningDateController,
                                        hintText: "Today",
                                        updateDate: cubit.updateJoiningDate,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Image.asset(
                                        'assets/arrow.png',
                                        height: 14,
                                      ),
                                    ),
                                    Expanded(
                                      child: DatePickerTextField(
                                        controller: cubit.leavingDateController,
                                        isNoDate: !isEdit,
                                        hintText: "No Date",
                                        updateDate: cubit.updateLeavingDate,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 64,
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 2, color: Colors.grey.shade300))),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CancelButton(),
                                SizedBox(width: 16),
                                SaveButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      context
                                          .read<EmployeeDetailsCubit>()
                                          .saveEmployee();
                                      FocusScope.of(context).unfocus();
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }

  SnackBar buildSnackBar() {
    return SnackBar(
      margin: EdgeInsets.only(bottom: 64),
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 1),
      content: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Icon(Icons.check_circle_outline, color: Colors.green),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Employee info saved successfully')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
