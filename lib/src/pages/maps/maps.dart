import 'package:flutter/material.dart';
import 'maps_view.dart';

class Maps extends StatelessWidget {
  const Maps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppbar(context), body: MapsView());
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.blue,
      title: const Text(
        'Maps',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
      leading: Icon(Icons.arrow_back, color: Colors.white),
    );
  }
}
