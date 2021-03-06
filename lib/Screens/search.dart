// ignore_for_file: avoid_unnecessary_containers, deprecated_member_use, prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      body: Container(
        child: ListView(
          children: <Widget>[
            new Container(
              child: ListTile(
                title: Text(
                  "Trends for you",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            new Divider(color: Colors.black54, height: 8.0),
            new Container(
              child: ListTile(
                title: Text(
                  "#Flutter",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white30,
                ),
              ),
            ),
            new Divider(),
            new Container(
              child: ListTile(
                title: Text(
                  "#FlutterCommunity",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white30,
                ),
              ),
            ),
            new Divider(),
            new Container(
              child: ListTile(
                title: Text(
                  "#Dart",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white30,
                ),
              ),
            ),
            new Divider(),
            new Container(
              child: ListTile(
                title: Text(
                  "#Python",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white30,
                ),
              ),
            ),
            new Divider(),
            new Container(
              child: ListTile(
                title: Text(
                  "#Anime",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white30,
                ),
              ),
            ),
            new Divider(),
            new Container(
              child: ListTile(
                title: Text(
                  "#FlutterDev",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white30,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          const snackBar = SnackBar(
              duration: Duration(seconds: 1),
              backgroundColor: Color(0xFFD50000),
              content: Text("Just for display!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900)));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Icon(Icons.search),
        backgroundColor: Color(0xFFF57F17),
      ),
    );
  }
}
