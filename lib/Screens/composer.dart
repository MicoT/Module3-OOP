// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, unused_field, duplicate_ignore, sized_box_for_whitespace, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:twitter/home.dart';
import 'create_shout.dart';

final userShoutMaker = TextEditingController();

class ShoutMaker extends StatefulWidget {
  const ShoutMaker({Key? key}) : super(key: key);

  @override
  _ShoutMakerState createState() => _ShoutMakerState();
}

class _ShoutMakerState extends State<ShoutMaker> {
  final _formKey = GlobalKey<FormState>();
  String _thisText = '';
  bool _lock = false;
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: ElevatedButton(
              onPressed: () async {
                setState(() {
                  _lock = true;
                });
                if (_thisText.isNotEmpty) {
                  userShout.add(new Shouttext(shout: userShoutMaker.text));
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MyHome()));
                } else {
                  const snackBar = SnackBar(
                      backgroundColor: Color(0xFFD50000),
                      content: Text("I can't hear anything...",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900)));

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: Icon(Icons.campaign_outlined),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFFF57F17)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90)))),
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
                    backgroundImage: AssetImage('assets/swag.gif'),
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
                      controller: userShoutMaker,
                      onChanged: (value) {
                        setState(() {
                          _thisText = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Shout something?',
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
