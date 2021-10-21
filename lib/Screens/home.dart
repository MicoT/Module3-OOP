// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'create_shout.dart';
import 'composer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      body: Center(
        child: ListView(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(top: 10.0),
              child: userShout.isEmpty
                  ? Center(
                      child: Text(
                        "All quite right now... \nNothing to report.",
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xff37474f),
                        ),
                      ),
                    )
                  : ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: userShout.length,
                      itemBuilder: (context, index) {
                        return Center(
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage('assets/swag.gif'),
                            ),
                            title: Text(
                              "Admin",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Container(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text(
                                userShout[index].shout,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.0),
                              ),
                            ),
                          ),
                        );
                      }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ShoutMaker()));
        },
        child: Icon(Icons.edit),
        backgroundColor: Color(0xFFF57F17),
      ),
    );
  }
}
