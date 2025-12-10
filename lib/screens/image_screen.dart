import 'package:flutter/material.dart';

class IronManStackScreen extends StatelessWidget {
  const IronManStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IronMan Screen'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 400,
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              color: Colors.amber,
              child: Image.network(
                "https://www.shutterstock.com/image-vector/july-3-2023-vector-illustration-600nw-2326749515.jpg",
              ),
            ),
            Positioned(
              top: 30,
              right: 30,
              child: Icon(Icons.edit, color: Colors.lightBlue),
            ),
            Positioned(
              bottom: 30,
              left: 30,
              child: Icon(Icons.thumbs_up_down, color: Colors.blue),
            ),
            Positioned(
              bottom: 30,
              left: 70,
              child: Icon(Icons.comment, color: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}
