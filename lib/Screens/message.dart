// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors, deprecated_member_use, unused_local_variable

import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      body: Container(
        child: ListView(
          children: <Widget>[
            new Divider(
              color: Colors.black45,
              height: 4.0,
            ),
            new Container(
              child: ListTile(
                title: Text(
                  "Requests",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            new Divider(color: Colors.black54, height: 8.0),
            new Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage('assets/Razer.jpg'),
                ),
                title: Text(
                  "RAZER",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "I have a new keyboard!",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ),
            new Divider(
              color: Colors.black45,
            ),
            new Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage('assets/Genshin.jpg'),
                ),
                title: Text(
                  "Genshin Impact",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Want a sponsership?",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ),
            new Divider(
              color: Colors.black45,
            ),
            new Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage('assets/discord.jpg'),
                ),
                title: Text(
                  "Discord",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Talk to me :(",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          const snackBar = SnackBar(
              backgroundColor: Colors.grey,
              content: Text("Just for display!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900)));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Icon(Icons.mail),
        backgroundColor: Color(0xFFF57F17),
      ),
    );
  }
}
