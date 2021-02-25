import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesApp/custom/warna.dart';

Widget navigationDrawer(BuildContext context) {
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
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Warna.white_three),
                  ),
                ),
                accountEmail: Text(
                  'taufiqdwic@gmail.com',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Warna.white_three),
                  ),
                ),
              ),
              new ListTile(
                leading: Icon(Icons.home_filled),
                title: Text(
                  "Home",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Warna.disable),
                  ),
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
