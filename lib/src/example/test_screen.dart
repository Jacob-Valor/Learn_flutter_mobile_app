import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image(
            image: const NetworkImage(
              'https://images.unsplash.com/photo-1553856622-d1b352e9a211?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&',
            ),
            width: 300,
            height: 300,
            errorBuilder: (context, error, stackTrace) {
              return const SizedBox(
                width: 300,
                height: 300,
                child: Center(child: Icon(Icons.broken_image)),
              );
            },
          ),
          Image.asset('assets/p01.png', width: 100, height: 100),
          Image.asset('assets/p02.png', width: 100, height: 100),
          Image.asset('assets/p03.png', width: 100, height: 100),
        ],
      ),
    );
  }
}
