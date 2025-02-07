import 'package:ems/domain/entities/employee_model.dart';
import 'package:ems/presentation/cubits/employee_cubit.dart';
import 'package:ems/presentation/views/pages/employee_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeListItem extends StatelessWidget {
  const EmployeeListItem({
    super.key,
    required this.employee,
  });

  final EmployeeModel employee;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(employee.id),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 32),
        color: Colors.red,
        child: Image.asset('assets/delete.png', height: 24),
      ),
      onDismissed: (direction) {
        context.read<EmployeeCubit>().deleteEmployee(employee.id!, context);
      },
      child: ListTile(
        isThreeLine: true,
        title: Text(
          employee.name ?? 'Name N/A',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              employee.role ?? 'Role N/A',
              style: const TextStyle(fontSize: 16, color: Color(0xFF949C9E)),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(employee.leavingDate != null
                    ? '${employee.joiningDate} - ${employee.leavingDate}'
                    : 'From ${employee.joiningDate}',
                  style: const TextStyle(color: Color(0xFF949C9E)),),
              ],
            ),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: context.read<EmployeeCubit>(),
                child: EmployeeDetailsPage(employee: employee),
              ),
            ),
          );
        },
      ),
    );
  }
}
