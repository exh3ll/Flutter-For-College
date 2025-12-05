import 'package:flutter/material.dart';

class CardViewScreen extends StatelessWidget {
  const CardViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardView'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SizedBox(
        height: 200,
        width: double.infinity,
        child: Card(
          color: Colors.amber,
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "First name: Binnol",
                style: TextStyle(fontSize: 24, color: Colors.grey.shade800),
              ), // Text
              Text(
                "Last name: Dahal",
                style: TextStyle(fontSize: 24, color: Colors.grey.shade800),
              ), // Text
              Text(
                "City: China, bangkok, kathmandu",
                style: TextStyle(fontSize: 24, color: Colors.grey.shade800),
              ), // Text
            ],
          ), // Column
        ), // Card
      ),
    );
  }
}
