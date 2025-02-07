import 'package:hive/hive.dart';
import '../../domain/repositories/employee_repository.dart';
import '../../domain/entities/employee_model.dart';

class EmployeeRepository implements IEmployeeRepository {
  final Box<EmployeeModel> box;

  EmployeeRepository(this.box);

  @override
  Future<void> saveEmployee(EmployeeModel employee) async {
    final employeeModel = EmployeeModel(
      id: employee.id,
      name: employee.name,
      role: employee.role,
      joiningDate: employee.joiningDate,
      leavingDate: employee.leavingDate,
    );

    await box.put(employee.id, employeeModel);
  }

  @override
  Future<EmployeeModel?> getEmployee(String id) async {
    final employeeModel = box.get(id);
    if (employeeModel == null) return null;

    return EmployeeModel(
      id: employeeModel.id,
      name: employeeModel.name,
      role: employeeModel.role,
      joiningDate: employeeModel.joiningDate,
      leavingDate: employeeModel.leavingDate,
    );
  }

  @override
  Future<List<EmployeeModel>> getAllEmployees() async {
    return box.values.map((e) => EmployeeModel(
      id: e.id,
      name: e.name,
      role: e.role,
      joiningDate: e.joiningDate,
      leavingDate: e.leavingDate,
    )).toList();
  }

  @override
  Future<void> deleteEmployee(String id) async {
    await box.delete(id);
  }
}
