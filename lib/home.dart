import 'package:flutter/material.dart';
import 'drawer.dart';
import 'mediburn.dart';
import 'profile.dart';
import 'about.dart';
import 'medicare.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title = 'Mediburn';
  int index = 0;
  List<Widget> list = [
    Mediburn(),
    Medicare(),
    About(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(title),
        ),
        // body: Home(),
        //  drawer:MyDrawer(),
        body: list[index],
        drawer: MyDrawer(
          onTap: (context, i, txt) {
            setState(() {
              index = i;
              title = txt;
              Navigator.pop(context);
            });
          },
        ));
  }
}
