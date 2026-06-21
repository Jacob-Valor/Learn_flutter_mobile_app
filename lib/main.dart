import 'package:flutter/material.dart';
// import 'package:mobile_app/src/example/test_screen_01.dart';
//import 'package:mobile_app/src/example/test_screen_02.dart';
import 'package:mobile_app/src/pages/main_menu.dart';

void main() {
  runApp(const MSTApp());
}

class MSTApp extends StatelessWidget {
  const MSTApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MST App',
      home: const MainMenu(),
    );
  }
}
