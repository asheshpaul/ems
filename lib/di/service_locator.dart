import 'package:ems/data/repositories/employee_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../domain/entities/employee_model.dart';
import '../domain/repositories/employee_repository.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  Future<void> setupLocator() async {
    await Hive.initFlutter();
    Hive.registerAdapter(EmployeeModelImplAdapter());
    final employeeBox = await Hive.openBox<EmployeeModel>('employeeBox');

    getIt.registerSingleton<EmployeeRepository>(
      EmployeeRepository(employeeBox),
    );

    getIt.registerSingleton<IEmployeeRepository>(
      EmployeeRepository(employeeBox),
    );
  }
}
