// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, unused_field, duplicate_ignore, sized_box_for_whitespace, prefer_final_fields

import 'package:SHOUT/home.dart';
import 'package:flutter/material.dart';

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
                  userShoutMaker.clear();
                  const snackBar = SnackBar(
                      backgroundColor: Color(0xFF00C853),
                      content: Text("Loud and clear!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900)));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
      backgroundColor: Color(0xff1B2939),
      body: Center(
        child: Form(
          key: _formKey,
          child: Stack(
            alignment: Alignment.center,
            children: [
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
                      style: TextStyle(color: Colors.white),
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
                        counterStyle: TextStyle(color: Colors.orange),
                        suffixIcon: IconButton(
                          onPressed: userShoutMaker.clear,
                          icon: Icon(Icons.clear),
                        ),
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
