import 'package:flutter/material.dart';
import 'category_view.dart';
import '../components/my_drawer.dart';

class Category extends StatelessWidget {
  Category({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: buildAppBar(context),
      body: CategoryView(),
      drawer: MyDrawer(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.blue,
      title: Text(
        'Category',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.white),
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.logout),
          color: Colors.white,
          onPressed: () => {MyDrawer.alertDialogLogout(context)},
        ),
      ],
    );
  }
}
