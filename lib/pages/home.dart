import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:shoesApp/custom/drawer.dart';
import 'package:shoesApp/custom/warna.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffolKey = new GlobalKey<ScaffoldState>();
  GlobalKey _bottomNavKey = GlobalKey();

  Future<bool> exitApp() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Konfirmasi Keluar"),
          content: Text("Apa anda yakin ingin keluar dari aplikasi ini?"),
          actions: <Widget>[
            FlatButton(
              child: Text("Tidak"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text("Ya"),
              onPressed: () {
                SystemNavigator.pop();
              },
            ),
          ],
        );
      },
    );
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Warna.white_three,
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
              Icons.home_filled,
              size: 20,
              color: Warna.disable,
            ),
            Icon(
              Icons.favorite,
              size: 20,
              color: Warna.disable,
            ),
            Icon(
              Icons.add_shopping_cart_sharp,
              size: 30,
              color: Warna.disable,
            ),
            Icon(
              Icons.event_note_outlined,
              size: 20,
              color: Warna.disable,
            ),
            Icon(
              Icons.person,
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
        body: WillPopScope(
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                  horizontal: 40 / 1.2, vertical: 20 / 1.5),
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: (Text('Our Product')),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Text('Sort By'),
                )
              ]),
            ),
            onWillPop: exitApp));
  }
}
