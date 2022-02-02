import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/utils/routes.dart';

class Johnpage extends StatelessWidget {
  //const JohnPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffFD9317),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'John Reo',
          style: TextStyle(
              fontFamily: " SF Pro Text",
              fontStyle: FontStyle.normal,
              fontSize: 22.0,
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w600,
              letterSpacing: -0.02),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              CupertinoIcons.pencil_circle,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.editpage);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset("assets/images/mess.png"),
                ),
                SizedBox(
                  height: 45.0,
                  width: 70.0,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 0.0),
                      child: Container(
                        width: 80.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xffFD9317)),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 12,
                                color: Color(0xffFD9317).withOpacity(0.0),
                                offset: Offset(1.0, 1.2),
                                spreadRadius: 1,
                              )
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  "10 hrs",
                                  style: TextStyle(
                                      color: Color(0xffFD9317),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Total Hours Assigned",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40.0,
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    child: Icon(
                      Icons.call,
                      color: Color(0xffFD9317),
                    ),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                children: [
                  Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: TextStyle(
                              fontFamily: " Poppins",
                              fontSize: 12.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              color: Color(0xffBDC6CF))),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Email ID",
                          labelStyle: TextStyle(
                              fontFamily: " Poppins",
                              fontSize: 12.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              color: Color(0xffBDC6CF))),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Mobile Number",
                          labelStyle: TextStyle(
                              fontFamily: " Poppins",
                              fontSize: 12.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              color: Color(0xffBDC6CF))),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Position",
                          labelStyle: TextStyle(
                              fontFamily: " Poppins",
                              fontSize: 12.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              color: Color(0xffBDC6CF))),
                    ),
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  Container(
                    height: 52.0,
                    width: 380.0,
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
                        "Done",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
