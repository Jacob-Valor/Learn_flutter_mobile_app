import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("MASTPRO", style: TextStyle(fontSize: 24)),
              accountEmail: Text(
                "MASTER PROGRAMMER",
                style: TextStyle(fontSize: 16),
              ),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
              otherAccountsPictures: [],
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.blue),
              title: Text("ຕັ້ງຄ່າ", style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: Icon(Icons.arrow_circle_right, color: Colors.blue),
            ),
            Divider(height: 10),
            ListTile(
              leading: Icon(Icons.info_sharp, color: Colors.blue),
              title: Text("ກ່ຽວກັບພວກເຮົາ", style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: Icon(Icons.arrow_circle_right, color: Colors.blue),
            ),
            Divider(height: 10),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("ໂປຣຟາຍ", style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: Icon(Icons.arrow_circle_right, color: Colors.blue),
            ),
            Divider(height: 10),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.blue),
              title: Text("ອອກຈາກລະບົບ", style: TextStyle(fontSize: 18)),
              onTap: () {
                alertDialogLogout(context);
              },
              trailing: Icon(Icons.arrow_circle_right, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }

  static Future<void> alertDialogLogout(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'ອອກຈາກລະບົບ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          content: const Text(
            'ທ່ານຕ້ອງການອອກຈາກລະບົບ ຫຼື ບໍ່?',
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: Text('ຍົກເລີກ', style: TextStyle(fontSize: 16)),
            ),
            TextButton(
              onPressed: () => SystemNavigator.pop(),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: Text('ອອກ', style: TextStyle(fontSize: 16)),
            ),
          ],
        );
      },
    );
  }
}
