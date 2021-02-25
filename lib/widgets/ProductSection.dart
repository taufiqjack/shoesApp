import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesApp/custom/warna.dart';

Widget buildProduct() {
  return Padding(
    padding: EdgeInsets.only(
      top: 10,
      left: 25,
      right: 25,
    ),
    child: Row(
      children: [
        Text(
          "Our Product",
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Container(),
        ),
        Text(
          "Sort By",
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 10,
            ),
          ),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          size: 15,
          color: Warna.disable,
        )
      ],
    ),
  );
}
