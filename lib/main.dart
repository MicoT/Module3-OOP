// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:SHOUT/Screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SHOUT OUT",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff15202C),
        primaryColorDark: const Color(0xff00838f),
        // ignore: deprecated_member_use
        accentColor: const Color(0xff1CA1F1),
      ),
      home: const SplashScreen(),
    );
  }
}
