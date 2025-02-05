import 'package:flutter/material.dart';

class AddEmployeeDetailsPage extends StatelessWidget {
  const AddEmployeeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Employee Details"),
      ),
      body: Column(
        children: [
          Expanded(child: Text("Add Employee Details Page")),
          Container(
            height: 64,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 2, color: Colors.grey.shade300)
                )
            ),
            child:Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FilledButton.tonal(onPressed: (){}, child: Text('Cancel')),
                  SizedBox(width: 16),
                  FilledButton(onPressed: (){}, child: Text('Save')),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
