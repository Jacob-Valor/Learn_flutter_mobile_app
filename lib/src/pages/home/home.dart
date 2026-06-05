import 'package:flutter/material.dart';
import 'package:mobile_app/src/pages/home/home_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context), body: HomeView());
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.category),
        color: Colors.white,
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text(
        'Home',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.greenAccent,
    );
  }
}
