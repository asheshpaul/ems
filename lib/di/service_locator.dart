import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ems/data/repositories/employee_repository.dart';
import 'package:ems/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../domain/entities/employee_model.dart';
import '../domain/repositories/employee_repository.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  Future<void> setupLocator() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await Hive.initFlutter();
    Hive.registerAdapter(EmployeeModelImplAdapter());
    final employeeBox = await Hive.openBox<EmployeeModel>('employeeBox');

    final fireStore = FirebaseFirestore.instance;

    getIt.registerSingleton<EmployeeRepository>(
      EmployeeRepository(employeeBox, fireStore),
    );

    getIt.registerSingleton<IEmployeeRepository>(
      EmployeeRepository(employeeBox, fireStore),
    );
  }
}
