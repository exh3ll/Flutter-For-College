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
          child: Center(
            child: Text(
              "Hello I am CardView Screen",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
