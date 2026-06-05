import 'package:flutter/material.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:mobile_app/src/pages/home/home.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  var _selectedIndex = 0;
  final List<Widget> _pages = [
    const Center(child: Home()),
    const Center(child: Text('Orders page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Wishlist page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Profile page', style: TextStyle(fontSize: 24))),
  ];
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
        backgroundColor: Colors.greenAccent,
        selectedItemColor: Colors.blue,
        items: <CrystalNavigationBarItem>[
          CrystalNavigationBarItem(
            icon: Icons.home,
            selectedColor: Colors.white,
          ),
          CrystalNavigationBarItem(
            icon: Icons.shopping_bag,
            selectedColor: Colors.white,
          ),
          CrystalNavigationBarItem(
            icon: Icons.favorite_border,
            selectedColor: Colors.white,
          ),
          CrystalNavigationBarItem(
            icon: Icons.person,
            selectedColor: Colors.white,
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
