import 'package:ems/presentation/views/pages/add_employee_details_page.dart';
import 'package:flutter/material.dart';

class EmployeeListPage extends StatelessWidget {
  const EmployeeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee List"),
      ),
      body: Center(
        child: Image.asset(
          'assets/no-employee-records-found.png',
          height: 245,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddEmployeeDetailsPage()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
