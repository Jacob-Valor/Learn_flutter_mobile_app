import 'package:flutter/material.dart';

class TestScreen01 extends StatelessWidget {
  const TestScreen01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ), // AppBar
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.lightBlue,
            padding: EdgeInsets.all(20),
            child: Text('One'),
          ), // Container
          Container(
            color: Colors.redAccent,
            padding: EdgeInsets.all(20),
            child: Text('Two'),
          ), // Container
          Container(
            color: Colors.orange,
            padding: EdgeInsets.all(20),
            child: Text('Three'),
          ), // Container
        ],
      ), // Row
    ); // Scaffold
  }
}
