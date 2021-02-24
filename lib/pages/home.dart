import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoesApp/custom/drawer.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffolKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffolKey,
      appBar: AppBar(
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => _scaffolKey.currentState.openDrawer(),
        ),
      ),
      drawer: navigationDrawer(context),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
