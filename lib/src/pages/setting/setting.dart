import 'package:flutter/material.dart';
import 'setting_view.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context), body: SettingView());
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.blue,
    title: Text("Setting", style: TextStyle(fontSize: 24, color: Colors.white)),
    leading: Icon(Icons.arrow_back, color: Colors.white),
  );
}
