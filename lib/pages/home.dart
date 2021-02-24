import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoesApp/custom/drawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shoesApp/custom/warna.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffolKey = new GlobalKey<ScaffoldState>();
  GlobalKey _bottomNavKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Warna.white_two,
      key: _scaffolKey,
      appBar: AppBar(
        backgroundColor: Warna.white_two,
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () => _scaffolKey.currentState.openDrawer(),
        ),
      ),
      //bottomNavigationBar: curved(),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavKey,
        index: 0,
        height: 70,
        items: [
          Icon(
            Icons.home,
            size: 20,
            color: Warna.disable,
          ),
          Icon(
            Icons.shopping_bag_rounded,
            size: 20,
            color: Warna.disable,
          ),
          Icon(
            Icons.shopping_basket_outlined,
            size: 30,
            color: Warna.disable,
          ),
          Icon(
            Icons.list_alt_outlined,
            size: 20,
            color: Warna.disable,
          ),
          Icon(
            Icons.people,
            size: 20,
            color: Warna.disable,
          ),
        ],
        color: Warna.white,
        buttonBackgroundColor: Colors.indigo[800],
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        //onTap: (){},
      ),
      drawer: navigationDrawer(context),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
