import 'package:flutter/material.dart';
import 'package:mobile_app/src/example/test_screen.dart';

void main() {
  runApp(const MSTApp());
}

class MSTApp extends StatelessWidget {
  const MSTApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'MST App', home: const TestScreen());
  }
}
