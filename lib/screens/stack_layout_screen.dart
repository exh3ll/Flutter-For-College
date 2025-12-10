import 'package:flutter/material.dart';

class StackLayoutScreen extends StatelessWidget {
  const StackLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Layout'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.amber,
              child: const Text('I am the first container'),
            ), // Container
            Positioned(
              top: 1,
              right: 1,
              child: Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 255, 3, 3),
                child: const Text('I am the send container'),
              ), // Container
            ), // Positioned
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: const Text('I am the third container'),
              ), // Container
            ), // Positioned
          ],
        ), // Stack
      ),
    );
  }
}
