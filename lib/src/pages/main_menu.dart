import 'package:flutter/material.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:mobile_app/src/pages/home/home.dart';
import 'package:mobile_app/src/pages/maps/maps.dart';
import 'package:mobile_app/src/pages/profile/profile.dart';
import 'package:mobile_app/src/pages/setting/setting.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  var _selectedIndex = 0;
  final List<Widget> _pages = [Home(), Maps(), Profile(), Setting()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CrystalNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.blue,
        items: <CrystalNavigationBarItem>[
          CrystalNavigationBarItem(
            icon: Icons.home_outlined,
            selectedColor: Colors.white,
            unselectedColor: Colors.grey,
          ),
          CrystalNavigationBarItem(
            icon: Icons.location_on_outlined,
            selectedColor: Colors.white,
            unselectedColor: Colors.grey,
          ),
          CrystalNavigationBarItem(
            icon: Icons.person_outline,
            selectedColor: Colors.white,
            unselectedColor: Colors.grey,
          ),
          CrystalNavigationBarItem(
            icon: Icons.settings_outlined,
            selectedColor: Colors.white,
            unselectedColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
