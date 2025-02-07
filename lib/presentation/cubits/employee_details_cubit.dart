import 'package:ems/domain/entities/employee_model.dart';
import 'package:ems/di/service_locator.dart';
import 'package:ems/domain/repositories/employee_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'employee_details_state.dart';

part 'employee_details_cubit.freezed.dart';

class EmployeeDetailsCubit extends Cubit<EmployeeDetailsState> {
  EmployeeDetailsCubit()
      : super(EmployeeDetailsState.initial(employee: EmployeeModel()));

  final TextEditingController nameController = TextEditingController();
  final TextEditingController roleController = TextEditingController();
  final TextEditingController joiningDateController = TextEditingController();
  final TextEditingController leavingDateController = TextEditingController();


  void loadEmployee(EmployeeModel? employee) async {
    emit(EmployeeDetailsState.initial(employee: employee ?? EmployeeModel()));
    nameController.text = employee?.name ?? '';
    roleController.text = employee?.role ?? '';
    joiningDateController.text = employee?.joiningDate ?? '';
    leavingDateController.text = employee?.leavingDate ?? '';
  }

  void updateName(String value) {
    emit(EmployeeDetailsState.dirty(
        employee: state.employee.copyWith(name: value)));
  }

  void updateRole(String value) {
    roleController.text=value;
    emit(EmployeeDetailsState.dirty(
        employee: state.employee.copyWith(role: value)));
  }

  void updateJoiningDate(String value) {
    emit(EmployeeDetailsState.dirty(
        employee: state.employee.copyWith(joiningDate: value)));
  }

  void updateLeavingDate(String value) {
    emit(EmployeeDetailsState.dirty(
        employee: state.employee.copyWith(leavingDate: value)));
  }

  void saveEmployee() async {
    var employee = state.employee;
    emit(EmployeeDetailsState.saveInProgress(employee: employee));
    final repository = getIt<IEmployeeRepository>();
    if (employee.id == null) {
      employee = employee.copyWith(id: Uuid().v4());
    }
    await repository.saveEmployee(employee);
    emit(EmployeeDetailsState.saveSuccess(employee: employee));
    emit(EmployeeDetailsState.initial(employee: employee));
  }
}
