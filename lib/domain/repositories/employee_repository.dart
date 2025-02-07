
import 'package:ems/domain/entities/employee_model.dart';

abstract class IEmployeeRepository {
  Future<void> saveEmployee(EmployeeModel employee);
  Future<EmployeeModel?> getEmployee(String id);
  Future<List<EmployeeModel>> getAllEmployees();
  Future<void> deleteEmployee(String id);
}