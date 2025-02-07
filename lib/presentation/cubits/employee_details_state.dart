part of 'employee_details_cubit.dart';

@freezed
class EmployeeDetailsState with _$EmployeeDetailsState {
  const factory EmployeeDetailsState.initial({required EmployeeModel employee}) = _Initial;

  const factory EmployeeDetailsState.dirty({required EmployeeModel employee}) =
      _Dirty;

  const factory EmployeeDetailsState.saveInProgress(
      {required EmployeeModel employee}) = _SaveInProgress;

  const factory EmployeeDetailsState.saveSuccess({required EmployeeModel employee}) =
      _SaveSuccess;
}
