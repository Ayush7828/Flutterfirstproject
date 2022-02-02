import 'package:flutter/material.dart';
import 'package:login/utils/routes.dart';

class Emailpage extends StatelessWidget {
  const Emailpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Material(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  "assets/images/mail.png",
                  height: 153,
                  width: 259,
                ),
              ),
              SizedBox(
                height: 28.0,
                width: 20.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Check your Email",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0,
                      fontStyle: FontStyle.normal,
                      fontFamily: "Poppins",
                      color: Color(0xff000000)),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    """
We have sent you get a new password link on your registerd email address""",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffAEB7C0)),
                  ),
                ),
              ),
              SizedBox(
                height: 28.0,
                width: 20.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.reset);
                },
                child: Container(
                  height: 48,
                  width: 320,
                  color: Color(0xffFD9317),
                  child: Center(
                    child: Text(
                      "Go to Email",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
