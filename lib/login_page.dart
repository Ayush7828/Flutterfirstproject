import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // get color => null;
  String email = "";
  String password = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  movetoback(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, "/home");

      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 161,
              height: 90.8,
              margin: EdgeInsets.symmetric(vertical: 107, horizontal: 110),
              child: Image.asset(
                "assets/images/splash.png",
              ),
            ),
            Row(
              children: [
                // Image.asset(
                //   "assets/images/facebook.png",
                // ),
                // Icon(Icons.facebook)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 25.0),
                    child: Container(
                      height: 41,
                      width: 145,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 4),
                            blurRadius: 24),
                      ], color: Colors.white),

                      // margin: EdgeInsets.symmetric(vertical: 32, horizontal: 30),

                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/t.png",
                              fit: BoxFit.fill,
                              width: 20.0,
                              height: 35.0,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Center(
                              child: Text(
                                "Facebook",
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.bold,
                                  height: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // left: 32;
                  // top: 289;
                  // border-radius: 5px;
                ),
                SizedBox(
                  width: 20.0,
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 25.0),
                    child: Container(
                      height: 41,
                      width: 145,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 4),
                              blurRadius: 24),
                        ],
                        color: Colors.white,
                      ),
                      // height: 41,
                      // margin: EdgeInsets.symmetric(vertical: 32, horizontal: 30),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 25),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/google.png",
                              width: 25.0,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              "Google",
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                height: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // left: 32;
                  // top: 289;
                  // border-radius: 5px;
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
              width: 25.0,
            ),
            Text(
              "OR",
              style: TextStyle(color: Color(0xffBDC6CF), fontSize: 14.0),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email ID",
                          labelStyle: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.forgot);
                },
                child: Container(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFD9317),
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                    )),
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 35.0,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.welcome);
              },
              child: Container(
                height: 52.0,
                width: 350.0,
                // color: Color(0xffFD9317),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xffFD9317),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  // boxShadow: [
                  //   BoxShadow(
                  //       offset: Offset(0, 4),
                  //       blurRadius: 17.0,
                  //       spreadRadius: 15.0),
                  // ]
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
              width: 8.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.registerp);
                    },
                    child: Container(
                      child: Text(
                        "Register Now",
                        style: TextStyle(color: Colors.amber),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22.0,
            )
          ],
        ),

        // left: 107,
        // top: 90,.
      ),
    ));
  }
}

class LoginState {}
