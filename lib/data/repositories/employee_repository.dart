import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';
import '../../domain/repositories/employee_repository.dart';
import '../../domain/entities/employee_model.dart';

class EmployeeRepository implements IEmployeeRepository {
  final FirebaseFirestore fireStore;
  final Box<EmployeeModel> hiveBox;

  EmployeeRepository(this.hiveBox, this.fireStore){
    _syncWithFireStore();
  }

  Future<void> _syncWithFireStore() async {
    fireStore.collection('employees').snapshots().listen((snapshot) {
      for (var change in snapshot.docChanges) {
        if (change.type == DocumentChangeType.added ||
            change.type == DocumentChangeType.modified) {
          final employee = EmployeeModel.fromJson(change.doc.data()!);
          hiveBox.put(employee.id, employee);
        } else if (change.type == DocumentChangeType.removed) {
          hiveBox.delete(change.doc.id);
        }
      }
    });
  }

  @override
  Future<void> saveEmployee(EmployeeModel employee) async {
    await fireStore.collection('employees').doc(employee.id).set(employee.toJson());

    await hiveBox.put(employee.id, employee);
  }

  @override
  Future<EmployeeModel?> getEmployee(String id) async {
    final doc = await fireStore.collection('employees').doc(id).get();
    if (doc.exists) {
      final employee = EmployeeModel.fromJson(doc.data()!);
      await hiveBox.put(id, employee);
      return employee;
    }
    return hiveBox.get(id);
    // final employeeModel = box.get(id);
    // if (employeeModel == null) return null;
    //
    // return EmployeeModel(
    //   id: employeeModel.id,
    //   name: employeeModel.name,
    //   role: employeeModel.role,
    //   joiningDate: employeeModel.joiningDate,
    //   leavingDate: employeeModel.leavingDate,
    // );
  }

  @override
  Future<List<EmployeeModel>> getAllEmployees() async {
    final querySnapshot = await fireStore.collection('employees').get();
    final employees = querySnapshot.docs.map((doc) {
      return EmployeeModel.fromJson(doc.data());
    }).toList();
    for (var employee in employees) {
      await hiveBox.put(employee.id, employee);
    }
    return employees;
    // return hiveBox.values.map((e) => EmployeeModel(
    //   id: e.id,
    //   name: e.name,
    //   role: e.role,
    //   joiningDate: e.joiningDate,
    //   leavingDate: e.leavingDate,
    // )).toList();
  }

  @override
  Future<void> deleteEmployee(String id) async {
    await fireStore.collection('employees').doc(id).delete();
    await hiveBox.delete(id);
  }
}
