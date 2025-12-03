import 'package:flutter/material.dart';
import '../models/student_model.dart' show students;

class OutputScreen extends StatelessWidget {
  const OutputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output Screen'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: students.isEmpty
          ? Center(
              child: Text(
                'No students added yet',
                style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
              ),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(12),
              itemCount: students.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final s = students[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      s.fname.isNotEmpty ? s.fname[0].toUpperCase() : '?',
                    ),
                  ),
                  title: Text('${s.fname} ${s.lname}'),
                  subtitle: Text(s.city),
                );
              },
            ),
    );
  }
}
