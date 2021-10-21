import 'package:flutter/material.dart';
import 'package:twitter/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController userController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    void login(String username, String password) {
      if (username == "admin" && password == "admin") {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyHome()));
      } else {
        const snackBar = SnackBar(
            backgroundColor: Color(0xFFD50000),
            content: Text("Error: Please Use Admin Credentials",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w900)));

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }

    return Scaffold(
        backgroundColor: Colors.cyan,
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: ListView(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logo.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    padding: const EdgeInsets.only(bottom: 25),
                    child: const Center(
                      child: Text(
                        'Welcome To Shout Out!',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Glacial Bold',
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  TextField(
                    controller: userController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      hintText: 'Username',
                      hintStyle: const TextStyle(color: Colors.black),
                      fillColor: const Color(0xFFFFFFFF),
                      filled: true,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(15)),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Colors.black),
                      fillColor: const Color(0xFFFFFFFF),
                      filled: true,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 75,
                      width: 100,
                      margin: const EdgeInsets.all(25),
                      child: ElevatedButton(
                        child:
                            const Text('Login', style: TextStyle(fontSize: 16)),
                        onPressed: () {
                          login(userController.text, passwordController.text);
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(15)),
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFF57F17)),
                        ),
                      ),
                    ),
                  )
                ],
              )),
            ])));
  }
}
