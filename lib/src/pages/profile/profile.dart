import 'package:flutter/material.dart';
import 'profile_view.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppbar(context), body: const ProfileView());
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.blue,
      title: const Text(
        'Profile',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
      leading: Icon(Icons.arrow_back, color: Colors.white),
    );
  }
}
