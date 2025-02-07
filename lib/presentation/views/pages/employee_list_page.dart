import 'package:ems/di/service_locator.dart';
import 'package:ems/domain/entities/employee_model.dart';
import 'package:ems/domain/repositories/employee_repository.dart';
import 'package:ems/presentation/cubits/employee_cubit.dart';
import 'package:ems/presentation/theme/app_colors.dart';
import 'package:ems/presentation/views/widgets/employee_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'employee_details_page.dart';

class EmployeeListPage extends StatelessWidget {
  const EmployeeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          EmployeeCubit(getIt<IEmployeeRepository>())..loadEmployees(),
      child: BlocBuilder<EmployeeCubit, EmployeeState>(
        builder: (context, state) {
          var cubit = context.read<EmployeeCubit>();

          return Scaffold(
            appBar: AppBar(title: Text('Employee List')),
            body: state.when(
              initial: () => Center(child: CircularProgressIndicator()),
              loading: () => Center(child: CircularProgressIndicator()),
              loaded: (employees) => loadedEmployees(cubit, employees),
              error: (message) => Center(child: Text(message)),
            ),
          );
        },
      ),
    );
  }

  Widget loadedEmployees(EmployeeCubit cubit, List<EmployeeModel> employees) {
    final currentEmployees = cubit.getCurrentEmployees();
    final previousEmployees = cubit.getPreviousEmployees();

    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: Container(
            width: constraints.maxWidth > 600 ? 500 : constraints.maxWidth,
            color: AppColors.surface,
            child: Column(
                    children: [
                      Expanded(
                        child: employees.isEmpty
                            ? Center(
                          child: Image.asset(
                            'assets/no-employee-records-found.png',
                            height: 245,
                          ),
                        )
                            : ListView(
                          children: [
                            if (currentEmployees.isNotEmpty)
                              buildEmployeesSection(
                                title: 'Current Employees',
                                employees: currentEmployees,
                              ),
                            if (previousEmployees.isNotEmpty)
                              buildEmployeesSection(
                                title: 'Previous Employees',
                                employees: previousEmployees,
                              ),
                          ],
                        ),
                      ),
                      // buildFooter(),
                      Container(
                        height: 84,
                        color: Color(0xFFF2F2F2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            employees.isEmpty
                                ? Spacer()
                                :
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    'Swipe left to delete',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xFF949C9E),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: FloatingActionButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => BlocProvider.value(
                                        value: cubit,
                                        child: EmployeeDetailsPage(),
                                      ),
                                    )),
                                child: Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        );
      }
    );
  }

  Widget buildEmployeesSection({
    required String title,
    required List<EmployeeModel> employees,
  }) {
    return Column(
      children: [
        Container(
          height: 56,
          color: AppColors.surface,
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
            ),
          ),
        ),
        Container(
          color: AppColors.white,
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) {
              return Divider(color: Colors.grey.shade300);
            },
            itemCount: employees.length,
            itemBuilder: (context, index) {
              final employee = employees[index];
              return EmployeeListItem(employee: employee);
            },
          ),
        ),
      ],
    );
  }

  Container buildFooter() {
    return Container(
      height: 84,
      color: Color(0xFFF2F2F2),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Swipe left to delete',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF949C9E),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
