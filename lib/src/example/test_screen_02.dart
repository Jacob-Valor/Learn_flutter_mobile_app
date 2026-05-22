import 'package:flutter/material.dart';

class Testscreen02 extends StatelessWidget {
  const Testscreen02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ), // AppBar
      body: Container(
        color: Colors.green,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: const Center(
          child: Text(
            'ສະບາຍດີ Flutter!',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ), // TextStyle
          ), // Text
        ), // Center
      ), // Container
    ); // Scaffold
  }
}
