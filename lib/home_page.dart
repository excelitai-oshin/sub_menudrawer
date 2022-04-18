
import 'package:flutter/material.dart';
import 'package:sub_menudrawer/nav_drawer.dart';
class Home_Page extends StatelessWidget {
  Home_Page({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> _scafoldKey =GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldKey,
      backgroundColor: Color(0xFFEEEEEE),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          backgroundColor: Colors.orangeAccent,
          leading: IconButton(
            onPressed: () {
              _scafoldKey.currentState!.openDrawer();
              //Drawer(child: MyDrawer());
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),

          ),
          actions: [
            IconButton(
              onPressed: () {
                // Scaffold.of(context).openDrawer();
                //scaffoldKey.currentState?.openDrawer();
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
              child: Container(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search here',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),

    );
  }
}
