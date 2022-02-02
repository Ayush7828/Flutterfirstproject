import 'package:flutter/material.dart';
import 'package:login/utils/routes.dart';

class Reset extends StatelessWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Reset Password",
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
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "Please enter your new password and confirm the password",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      fontFamily: " Poppins",
                      color: Color(0xffAEB7C0)),
                ),
              ),
            ),
          ),
          Column(
            children: [
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
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 10.0,
                            color: Color(0xffBDC6CF))),
                  ),
                ),
              ),
              SizedBox(
                height: 28.0,
                width: 20.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.login);
                },
                child: Container(
                  height: 52,
                  width: 320,
                  color: Color(0xffFD9317),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
