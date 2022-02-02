import 'package:flutter/material.dart';
import 'package:login/utils/routes.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({Key? key}) : super(key: key);

  @override
  _RegisterpageState createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  String firstname = "";
  String lastname = "";
  String email = "";
  String mobilenumber = "";
  String password = "";
  String confirmpassword = "";
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 90.0, horizontal: 15.0),
              child: Container(
                child: Center(
                    child: Text(
                  "Register to Work Scheduler",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontFamily: "Poppins",
                      color: Color(0xff000000)),
                )),
              ),
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
                            labelText: "First Name",
                            labelStyle: TextStyle(
                                fontFamily: " Poppins",
                                fontSize: 12.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                color: Color(0xffBDC6CF))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please write a firstname";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          firstname = value;
                          setState(() {});
                        },
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Last Name",
                            labelStyle: TextStyle(
                                fontFamily: " Poppins",
                                fontSize: 12.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                color: Color(0xffBDC6CF))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please write a lasttname";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          lastname = value;
                          setState(() {});
                        },
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                                fontFamily: " Poppins",
                                fontSize: 12.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                color: Color(0xffBDC6CF))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please write a email";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          email = value;
                          setState(() {});
                        },
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Mobile Number ",
                            labelStyle: TextStyle(
                                fontFamily: " Poppins",
                                fontSize: 12.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                color: Color(0xffBDC6CF))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please write a mobile number ";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          mobilenumber = value;
                          setState(() {});
                        },
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                                fontFamily: " Poppins",
                                fontSize: 12.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                color: Color(0xffBDC6CF))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please write a password";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          password = value;
                          setState(() {});
                        },
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Confirm Password",
                            labelStyle: TextStyle(
                                fontFamily: " Poppins",
                                fontSize: 12.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                color: Color(0xffBDC6CF))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please write a confirm password";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          confirmpassword = value;
                          setState(() {});
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 18.0),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "By registering you agree to ",
                      style: TextStyle(
                          color: Color(0xffAFB9C3),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Poppins"),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Terms and Conditions ",
                      style: TextStyle(
                          color: Color(0xffFD9317),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 18.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "and ",
                          style: TextStyle(
                              color: Color(0xffAFB9C3),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Poppins"),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Privacy Policy ",
                          style: TextStyle(
                              color: Color(0xffFD9317),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Poppins"),
                        ),
                      ),
                      Container(
                        child: Text(
                          "of work Scheduler",
                          style: TextStyle(
                              color: Color(0xffAFB9C3),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Poppins"),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 50.0,
                    width: 100.0,
                  ),
                  InkWell(
                    onTap: () => movetoback(context),
                    child: Container(
                      height: 48,
                      width: 320,
                      color: Color(0xffFD9317),
                      child: Center(
                        child: Text(
                          "Resgister",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 55.0),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Already have an account",
                            style: TextStyle(
                                color: Color(0xffAFB9C3),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Poppins"),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, MyRoutes.register);
                            Navigator.pushNamed(context, MyRoutes.login);
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
                  )
                  // Container(
                  //   child: Text(
                  //     "Already have an account",
                  //     style: TextStyle(
                  //         color: Color(0xffAFB9C3),
                  //         fontStyle: FontStyle.normal,
                  //         fontWeight: FontWeight.normal,
                  //         fontFamily: "Poppins"),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
