import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
class EmployeeModel with _$EmployeeModel {
  const EmployeeModel._();

  @HiveType(typeId: 0)
  @JsonSerializable(explicitToJson: true, anyMap: true)
  const factory EmployeeModel({
    @HiveField(0) String? id,
    @HiveField(1) String? name,
    @HiveField(2) String? role,
    @HiveField(3) String? joiningDate,
    @HiveField(4) String? leavingDate,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);
}