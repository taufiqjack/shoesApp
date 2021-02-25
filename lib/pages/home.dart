import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:shoesApp/custom/drawer.dart';
import 'package:shoesApp/custom/warna.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoesApp/models/kategoriModel.dart';
import 'package:shoesApp/models/sepatuModel.dart';
import 'package:shoesApp/pages/ItemList.dart';
import 'package:shoesApp/widgets/ProductSection.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffolKey = new GlobalKey<ScaffoldState>();
  GlobalKey _bottomNavKey = GlobalKey();
  int selectedIndex = 0;

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
            icon: SvgPicture.asset(
              "assets/icons/menu.svg",
              height: 15,
              color: Warna.black,
            ),
            onPressed: () => _scaffolKey.currentState.openDrawer(),
          ),
          title: Center(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "X",
                    style: TextStyle(
                        color: Warna.primarycolor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "E",
                    style: TextStyle(
                        color: Warna.secondrycolor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
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
            child: Stack(
              children: [
                Column(
                  children: [
                    buildProduct(),
                    // buildProduct(),
                    SizedBox(
                      height: 20,
                    ),
                    buildCategories(context),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: GridView.builder(
                          itemCount: listSepatuModel.length,
                          gridDelegate:
                              new SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 0.75),
                          itemBuilder: (context, index) => ItemList(
                            listSepatuModel: listSepatuModel[index],
                            index: index,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            onWillPop: exitApp));
  }

  buildCategories(BuildContext context) {
    return Container(
        height: 35,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: kategoriModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: 90,
                  decoration: BoxDecoration(
                      color: Warna.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        selectedIndex == index
                            ? BoxShadow(
                                color: Warna.navbariconcolor,
                                blurRadius: 10,
                                offset: Offset(0, -1))
                            : BoxShadow()
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        '${kategoriModel[index].images}',
                        height: 20,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${kategoriModel[index].title}',
                        style: TextStyle(
                            color: selectedIndex == index
                                ? Warna.primarycolor
                                : Warna.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
