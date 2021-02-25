import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoesApp/custom/warna.dart';
import 'package:shoesApp/models/sepatuModel.dart';

class ItemList extends StatelessWidget {
  final ListSepatuModel listSepatuModel;
  final int index;

  const ItemList({Key key, this.listSepatuModel, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: Warna.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        color: Warna.navbariconcolor,
                        offset: Offset(0, -1),
                        blurRadius: 10)
                  ]),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                  child: Row(
                    children: [
                      listSepatuModel.showpercentase
                          ? Padding(
                              padding:
                                  EdgeInsets.only(top: 8, right: 8, left: 8),
                              child: Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Warna.secondrycolor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "${listSepatuModel.persentase}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                      Expanded(
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: listSepatuModel.activeheart
                                ? Warna.defaultredcolor
                                : Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: SvgPicture.asset("assets/icons/heart.svg",
                                height: 20,
                                color: listSepatuModel.activeheart
                                    ? Warna.white
                                    : Warna.navbariconcolor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: listSepatuModel.showcasebackground,
                          shape: BoxShape.circle),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              color: listSepatuModel.showcasebackground,
                              shape: BoxShape.circle,
                              border: Border.all(color: Warna.white, width: 2)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 5,
                      left: 0,
                      child: Hero(
                        tag: "${listSepatuModel.shoeImage}",
                        child: Image.asset(
                          "${listSepatuModel.shoeImage}",
                          height: 90,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${listSepatuModel.shoeName}",
                  style: TextStyle(
                    color: Warna.primarycolor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${listSepatuModel.price}",
                  style: TextStyle(
                      color: Warna.primarycolor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}