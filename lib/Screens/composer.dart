// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, unused_field, duplicate_ignore, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:twitter/home.dart';
import 'create_shout.dart';

final userTweet = TextEditingController();

class Tweet extends StatefulWidget {
  const Tweet({Key? key}) : super(key: key);

  @override
  _TweetState createState() => _TweetState();
}

class _TweetState extends State<Tweet> {
  final _formKey = GlobalKey<FormState>();
  String _enteredText = '';

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                userShout.add(new Shouttext(shout: userTweet.text));
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => MyHome()));
              },
              child: Icon(Icons.campaign_outlined),
            ),
          ),
        ],
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // this comment is for background message
              // Container(
              //           height: MediaQuery.of(context).size.height,
              //           width: MediaQuery.of(context).size.width,
              //           decoration: BoxDecoration(
              //               gradient: LinearGradient(
              //                   begin: Alignment.topCenter,
              //                   end: Alignment.bottomCenter,
              //                   colors: [
              //                 Color(0xFF252525),
              //                 Color(0xFF414141),
              //                 Color(0xFF212121)
              //               ])),
              //         ),
              Positioned(
                  top: 20,
                  left: 30,
                  child: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/DP.png'),
                  )),
              Positioned(
                  top: 10,
                  left: 100,
                  child: Container(
                    height: 300,
                    width: 265,
                    child: TextFormField(
                      autofocus: true,
                      maxLength: 240,
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 50,
                      controller: userTweet,
                      onChanged: (value) {
                        setState(() {
                          _enteredText = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Whats Happening?',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
