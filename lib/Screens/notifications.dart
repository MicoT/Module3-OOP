// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Notificationn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColorDark,
          bottom: TabBar(
            indicatorColor: Theme.of(context).primaryColorDark,
            tabs: <Widget>[
              new Tab(
                child: Text(
                  "All",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              new Tab(
                  child: Text(
                "Mentions",
                style: TextStyle(fontSize: 18.0),
              )),
            ],
          ),
        ),
        body: Center(
          child: Container(
            color: Theme.of(context).primaryColorDark,
            child: ListView(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage('assets/DP.png'),
                    ),
                    title: Text(
                      "Flutter",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        "You are using listbuilder? That's amazing!",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
