import 'package:flutter/material.dart';
import '../models/employee_model.dart' show employees;

class EmployeeViewScreen extends StatelessWidget {
  const EmployeeViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Employees'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: employees.isEmpty
          ? Center(
              child: Text(
                'No employees added yet',
                style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
              ),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(12),
              itemCount: employees.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final e = employees[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      e.fullName.isNotEmpty ? e.fullName[0].toUpperCase() : '?',
                    ),
                  ),
                  title: Text(e.fullName),
                  subtitle: Text(e.employeeId),
                  trailing: Text('${e.gender} - ${e.department}'),
                );
              },
            ),
    );
  }
}
