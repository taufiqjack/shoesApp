import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoesApp/custom/warna.dart';

Widget navigationDrawer(BuildContext) {
  return Drawer(
    child: Column(
      children: [
        Expanded(
          child: new ListView(
            children: [
              new UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Warna.white,
                  radius: 40,
                  child: Icon(Icons.people),
                ),
                accountName: Text(
                  'Taufiq',
                  style: TextStyle(color: Warna.white_three),
                ),
                accountEmail: Text(
                  'taufiqdwic@gmail.com',
                  style: TextStyle(color: Warna.white_three),
                ),
              ),
              new ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  "Home",
                  style: TextStyle(color: Warna.disable),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        Divider(),
      ],
    ),
  );
}
