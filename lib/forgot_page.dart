import 'package:flutter/material.dart';
import 'package:login/utils/routes.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({Key? key}) : super(key: key);

  @override
  _ForgotpasswordState createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  String email = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();

  movetoback(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, "/email");

      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.email);
              },
              child: Container(
                child: Text(
                  "Done",
                  style: TextStyle(
                    color: Color(0xffFD9317),
                    fontSize: 14.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          // Container(
          //   child: Icon(
          //     Icons.arrow_back,
          //   ),
          // )
        ],
      ),
      body: Material(
        color: Colors.white,
        child: Column(
          children: [
            // InkWell(
            //   onTap: () {
            //     Navigator.pushNamed(context, MyRoutes.login);
            //   },
            //   child: Container(
            //       alignment: Alignment.topLeft,
            //       child: Icon(
            //         Icons.arrow_back,
            //       )),
            // ),
            SizedBox(
              height: 40.0,
              width: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0,
                      fontStyle: FontStyle.normal,
                      fontFamily: "Poppins",
                      color: Color(0xff000000)),
                ),
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "Please enter your registerd mail address to get a new password link",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      fontFamily: " Poppins",
                      color: Color(0xffAEB7C0)),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email ID",
                      labelStyle: TextStyle(
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontSize: 10.0,
                          color: Color(0xffBDC6CF))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please write a lasttname";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    email = value;
                    setState(() {});
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
