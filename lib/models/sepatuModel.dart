import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shoesApp/custom/warna.dart';

class ListSepatuModel {
  String shoeName;
  String shoeImage;
  String persentase;
  String price;
  String rating;
  bool showpercentase;
  bool activeheart;

  Color showcasebackground;
  Color lightshowcasebackground;

  ListSepatuModel({
    this.shoeName,
    this.shoeImage,
    this.persentase,
    this.price,
    this.rating,
    this.showpercentase = false,
    this.activeheart = false,
    this.showcasebackground,
    this.lightshowcasebackground,
  });
}

List<ListSepatuModel> listSepatuModel = [
  ListSepatuModel(
    showcasebackground: Warna.colorpink,
    lightshowcasebackground: Warna.lightShowcasebgcolorpink,
    shoeImage: "assets/images/compasslow1.png",
    persentase: "30%",
    shoeName: "Compass Gazelle Low",
    price: "\Rp" + "400.000",
    rating: "4.5",
    showpercentase: true,
    activeheart: false,
  ),
  ListSepatuModel(
    showcasebackground: Warna.colorblue,
    lightshowcasebackground: Warna.lightShowcasebgcolorpink,
    shoeImage: "assets/images/compassh2.png",
    persentase: "40%",
    shoeName: "Compass Gazelle High",
    price: "\Rp" + "525.000",
    rating: "4.0",
    showpercentase: true,
    activeheart: true,
  ),
  ListSepatuModel(
    showcasebackground: Warna.colorgreen,
    lightshowcasebackground: Warna.lightShowcasebgcolorpink,
    shoeImage: "assets/images/compasslow2.png",
    persentase: "30%",
    shoeName: "Compass Gazelle Low",
    price: "\Rp" + "425.000",
    rating: "3.0",
    showpercentase: true,
    activeheart: false,
  ),
  ListSepatuModel(
    showcasebackground: Warna.yellowColor,
    lightshowcasebackground: Warna.lightShowcasebgcolorpink,
    shoeImage: "assets/images/compassh1.png",
    persentase: "40%",
    shoeName: "Compass Gazelle High",
    price: "\Rp" + "510.000",
    rating: "4.5",
    showpercentase: true,
    activeheart: false,
  ),
];
