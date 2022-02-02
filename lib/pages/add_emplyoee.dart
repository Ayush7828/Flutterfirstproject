import 'package:flutter/material.dart';

class Addemployee extends StatelessWidget {
  const Addemployee({Key? key}) : super(key: key);

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
          'Add Employees',
          style: TextStyle(
              fontFamily: " SF Pro Text",
              fontStyle: FontStyle.normal,
              fontSize: 22.0,
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w600,
              letterSpacing: -0.02),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
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
                      labelText: "Mobile Number ",
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
                      labelText: "Positon",
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
                    "Add Employee",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
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
