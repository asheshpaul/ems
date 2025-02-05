import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/datepicker.dart';

class AddEmployeeDetailsPage extends StatelessWidget {
  AddEmployeeDetailsPage({super.key});

  final TextEditingController roleController = TextEditingController();
  final TextEditingController fromDateController = TextEditingController();
  final TextEditingController toDateController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Employee Details"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Employee name",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person_2_outlined),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      readOnly: true,
                      controller: roleController,
                      decoration: InputDecoration(
                        hintText: "Select Role",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.work_outline),
                        suffixIcon: Icon(Icons.arrow_drop_down),
                      ),
                      onTap: () => showRoles(context),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: StatefulBuilder(
                            builder: (context, setState) {
                              return TextFormField(
                                readOnly: true,
                                controller: fromDateController,
                                decoration: InputDecoration(
                                  hintText: "Today",
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.today),
                                ),
                                onTap: () async {
                                  await showDialog(
                                    context: context,
                                    builder: (context) =>
                                        CustomDatePickerPopup(),
                                  ).then(
                                    (selectedDate) {
                                      if (selectedDate != null) {
                                        setState(() {
                                          fromDateController.text =
                                              DateFormat('d MMM yyyy')
                                                  .format(selectedDate);
                                        });
                                      }
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(Icons.arrow_forward),
                        ),
                        Expanded(
                          child: TextFormField(
                            readOnly: true,
                            controller: toDateController,
                            decoration: InputDecoration(
                              hintText: "No Date",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.today),
                            ),
                            onTap: () async {
                              await showDialog(
                                context: context,
                                builder: (context) =>
                                    CustomDatePickerPopup(),
                              ).then(
                                (selectedDate) {
                                  if (selectedDate != null) {
                                    toDateController.text =
                                        DateFormat('d MMM yyyy')
                                            .format(selectedDate);
                                  }
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 64,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 2, color: Colors.grey.shade300))),
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FilledButton.tonal(onPressed: () {}, child: Text('Cancel')),
                    SizedBox(width: 16),
                    FilledButton(onPressed: () {}, child: Text('Save')),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void showRoles(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...List.generate(
                4,
                (index) {
                  List roles = [
                    "Product Designer",
                    "Flutter Developer",
                    "QA Tester",
                    "Product Owner",
                  ];
                  return Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2, color: Colors.grey.shade300))),
                    child: ListTile(
                      title: Center(child: Text(roles[index])),
                      onTap: () {
                        roleController.text = roles[index];
                        Navigator.pop(context);
                        FocusScope.of(context).unfocus();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
