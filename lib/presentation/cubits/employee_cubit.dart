import 'package:ems/domain/entities/employee_model.dart';
import 'package:ems/domain/repositories/employee_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'employee_cubit.freezed.dart';

part 'employee_state.dart';

@injectable
class EmployeeCubit extends Cubit<EmployeeState> {
  final IEmployeeRepository repository;
  List<EmployeeModel> cachedEmployees = [];

  EmployeeCubit(this.repository) : super(EmployeeState.initial());

  void loadEmployees() async {
    emit(EmployeeState.loading());
    try {
      cachedEmployees = await repository.getAllEmployees();
      emit(EmployeeState.loaded(cachedEmployees));
    } catch (e) {
      emit(EmployeeState.error(e.toString()));
    }
  }

  List<EmployeeModel> getCurrentEmployees() {
    return cachedEmployees
        .where((employee) => employee.leavingDate == null)
        .toList();
  }

  List<EmployeeModel> getPreviousEmployees() {
    return cachedEmployees
        .where((employee) => employee.leavingDate != null)
        .toList();
  }

  void deleteEmployee(String id, context) async {
    final employee = cachedEmployees.firstWhere((e) => e.id == id);
    await repository.deleteEmployee(id);
    loadEmployees();

    // Show a SnackBar with an Undo action
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Employee data has been deleted'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () async {
            await repository.saveEmployee(employee!);
            loadEmployees();
          },
        ),
      ),
    );
  }
}
