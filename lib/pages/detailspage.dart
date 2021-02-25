import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoesApp/custom/warna.dart';

class DetailsPage extends StatefulWidget {
  final String shoesname;
  final String shoeimage;
  final String persentase;
  final String price;
  final String rating;
  final bool showpersentase;
  final bool activeheart;
  final Color showcasebackgrund;
  final Color lightshowcasebackground;

  DetailsPage(
      {Key key,
      this.shoeimage,
      this.shoesname,
      this.persentase,
      this.price,
      this.rating,
      this.showpersentase,
      this.activeheart,
      this.showcasebackgrund,
      this.lightshowcasebackground})
      : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectedIndex = 0;
  int selectedColorIndex = 0;
  List<String> shoesSize = [
    "ID 38",
    "ID 39",
    "ID 40",
    "ID 41",
  ];

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffolKey = new GlobalKey<ScaffoldState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Warna.white_two,
        elevation: 0.0,
        actions: [
          Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Warna.defaultbgcolor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Warna.navbariconcolor,
                      blurRadius: 10,
                      offset: Offset(0, -1),
                    )
                  ]),
              child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SvgPicture.asset(
                    "assets/icons/heart.svg",
                    height: 25,
                    color: Colors.white,
                  )))
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
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
      body: Stack(
        children: [
          Column(children: [
            widget.showpersentase
                ? Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Warna.secondrycolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "${widget.persentase}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                : Container(),
            SizedBox(
              height: 5,
            )
          ]),
        ],
      ),
    );
  }

  buildShoesShow(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.75,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: widget.showcasebackgrund,
                width: 2,
              )),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.75,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: widget.showcasebackgrund,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.75,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: widget.showcasebackgrund,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.75,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: widget.showcasebackgrund,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 80,
          left: 50,
          bottom: 0,
          child: Hero(
            tag: widget.shoeimage,
            child: Image.asset(
              "${widget.shoeimage}",
              height: 100,
            ),
          ),
        )
      ],
    );
  }

  buildPrice(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.3,
      decoration: BoxDecoration(
        color: Warna.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
              color: Warna.navbariconcolor,
              offset: Offset(0, -1),
              blurRadius: 2),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 30, right: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${widget.shoesname}",
              style: TextStyle(
                  fontSize: 30,
                  color: Warna.primarycolor,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(
                  Icons.star_outlined,
                  size: 30,
                  color: Warna.yellowdark,
                ),
                Text(
                  "${widget.rating}",
                  style: TextStyle(fontSize: 18, color: Warna.grey),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Compass Sepatu Kebanggaan Indonesia",
              style: TextStyle(fontSize: 18, color: Warna.primarycolor),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Size : ",
                  style: TextStyle(
                      color: Warna.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.35,
                  child: Center(
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: shoesSize.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 13, vertical: 8),
                            child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              minWidth: 50,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: selectedIndex == index
                                  ? Warna.secondrycolor
                                  : Warna.white,
                              child: Center(
                                child: Text(
                                  shoesSize[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Available Color",
                  style: TextStyle(
                      fontSize: 18,
                      color: Warna.grey,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 2, vertical: 12),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedColorIndex = index;
                              });
                            },
                            child: Container(
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectedColorIndex == index
                                    ? Warna.colorOptions[index]
                                    : Warna.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Warna.colorOptions[index]),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
