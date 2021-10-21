// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'Screens/notifications.dart';
import 'Screens/home.dart';
import 'Screens/message.dart';
import 'Screens/search.dart';

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => new MyHomeState();
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();

    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SHOUT OUT!"),
        leading: CircleAvatar(
          radius: 5.0,
          backgroundImage: AssetImage('assets/DP.png'),
          child: ClipOval(
            child: new SizedBox(
              width: 10.0,
              height: 10.0,
            ),
          ),
        ),
      ),
      //------------------------------------Profile Drawer-------------------------------------
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColorDark,
          child: ListView(
            children: <Widget>[
              new Container(
                child: new UserAccountsDrawerHeader(
                  accountName: Text(
                    "Admin",
                    style: new TextStyle(fontSize: 15.0),
                  ),
                  accountEmail: Text(
                    "admin@gmail.com",
                    style: new TextStyle(fontSize: 15.0),
                  ),
                  currentAccountPicture: Container(
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        image: AssetImage('assets/DP.png'),
                      ),
                    ),
                  ),
                ),
              ),
              new Container(
                child: new ListTile(
                  title: Text(
                    "Profile",
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  leading: Icon(Icons.person),
                ),
              ),
              new Divider(
                height: 5.0,
                color: Colors.black45,
              ),
              new Container(
                child: new ListTile(
                  title: Text(
                    "Lists",
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  leading: Icon(Icons.list),
                ),
              ),
              new Divider(
                height: 5.0,
                color: Colors.black45,
              ),
              new Container(
                child: new ListTile(
                  title: Text(
                    "Place Marks",
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  leading: Icon(Icons.bookmark_border),
                ),
              ),
              new Divider(
                height: 5.0,
                color: Colors.black45,
              ),
              new Container(
                child: new ListTile(
                  title: new Text(
                    "Moments",
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  leading: Icon(Icons.flash_on),
                ),
              ),
              new Divider(
                height: 2.0,
              ),
            ],
          ),
        ),
      ),
      //---------------------------------------Tab buttons------------------------------------
      body: new TabBarView(
        children: <Widget>[
          new Home(),
          new Search(),
          new Notificationn(),
          new Message()
        ],
        controller: controller,
      ),
      bottomNavigationBar: new Material(
        shadowColor: Colors.white,
        color: Theme.of(context).primaryColorDark,
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              icon: new Icon(
                Icons.home,
                size: 30.0,
              ),
            ),
            new Tab(
              icon: new Icon(
                Icons.search,
                size: 30.0,
              ),
            ),
            new Tab(
              icon: new Icon(
                Icons.notifications,
                size: 30.0,
              ),
            ),
            new Tab(
              icon: new Icon(
                Icons.message,
                size: 30.0,
              ),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
