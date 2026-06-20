import 'package:flutter/material.dart';
import 'home_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context), body: HomeView());
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.blue,
      title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 24)),
      leading: Icon(Icons.arrow_back, color: Colors.white),
    );
  }
}
