part of 'employee_cubit.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState.initial() = _Initial;
  const factory EmployeeState.loading() = _Loading;
  const factory EmployeeState.loaded(List<EmployeeModel> employees) = _Loaded;
  const factory EmployeeState.error(String message) = _Error;
}

