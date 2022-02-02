import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Viewscheduled extends StatelessWidget {
  const Viewscheduled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xffFD9317),
          centerTitle: true,
          title: Text(
            "   View Schedule",
            style: TextStyle(
                fontFamily: "SF Pro Text",
                fontWeight: FontWeight.w600,
                fontSize: 22.0,
                color: Color(0xffFFFFFF),
                letterSpacing: -0.02),
          ),
          actions: [Image.asset("assets/images/icon.png")],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Current Week",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14.0,
                          color: Color(0xff000000)),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(CupertinoIcons.chevron_up),
                  SizedBox(
                    width: 90.0,
                  ),
                  Container(
                    child: Text(
                      "Total Hrs Assigned-",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14.0,
                          color: Color(0xff000000)),
                    ),
                  ),
                  Text(
                    "10",
                    style: TextStyle(
                        color: Color(0xffFD9317), fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              CupertinoIcons.chevron_up,
                              color: Color(0xff000000),
                            ),
                            labelText: ' Day',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xffBDC6CF))),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                alignment: Alignment.topRight,
                child: Text(
                  "Delete",
                  style: TextStyle(
                      color: Color(0xffFD9317),
                      fontFamily: "Poppins",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              // Container(
              //   child: GridView.builder(
              //     itemCount: 6,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       childAspectRatio: 3 / 2,
              //       crossAxisSpacing: 32,
              //       mainAxisSpacing: 10,
              //     ),
              //     itemBuilder: (ctx, index) => Container(
              //       child: Column(
              //         children: [
              //           Container(
              //             child: Text(
              //               "ayush",
              //               style: TextStyle(),
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //   ),
              // )

              Wrap(
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 71,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xffFD9317),
                        ),
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
                          child: Text(
                            "08 TO 10",
                            style: TextStyle(
                                color: Color(0xffFD9317),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"),
                          ),
                        ),
                        Text("data")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                    width: 32.0,
                  ),
                  Container(
                    height: 60,
                    width: 71,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xffFD9317),
                        ),
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
                          child: Text(
                            "08 TO 10",
                            style: TextStyle(
                                color: Color(0xffFD9317),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"),
                          ),
                        ),
                        Text("data")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                    width: 32.0,
                  ),
                  Container(
                    height: 60,
                    width: 72,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xffFD9317),
                        ),
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
                          child: Text(
                            "08 TO 10",
                            style: TextStyle(
                                color: Color(0xffFD9317),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"),
                          ),
                        ),
                        Text("data")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                    width: 32.0,
                  ),
                  Container(
                    height: 60,
                    width: 71,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xffFD9317),
                        ),
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
                          child: Text(
                            "08 TO 10",
                            style: TextStyle(
                                color: Color(0xffFD9317),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"),
                          ),
                        ),
                        Text("data")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                    width: 32.0,
                  ),
                  Container(
                    height: 60,
                    width: 71,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xffFD9317),
                        ),
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
                          child: Text(
                            "08 TO 10",
                            style: TextStyle(
                                color: Color(0xffFD9317),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"),
                          ),
                        ),
                        Text("data")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 31.0,
                    width: 20.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(30.0),
                    child: Icon(
                      Icons.add,
                      color: Color(0xffFD9317),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                CupertinoIcons.chevron_up,
                                color: Color(0xff000000),
                              ),
                              labelText: ' Day',
                              labelStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xffBDC6CF))),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 20.0),
                        alignment: Alignment.topRight,
                        child: Text(
                          "Edit",
                          style: TextStyle(
                              color: Color(0xffFD9317),
                              fontFamily: "Poppins",
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 20.0),
                        alignment: Alignment.topRight,
                        child: Text(
                          "Delete",
                          style: TextStyle(
                              color: Color(0xffFD9317),
                              fontFamily: "Poppins",
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.0,
                    width: 32.0,
                  ),
                  Wrap(
                    spacing: 8.0, // gap between adjacent chips
                    runSpacing: 4.0, // gap between lines
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 71,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xffFD9317),
                            ),
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
                              child: Text(
                                "08 TO 10",
                                style: TextStyle(
                                    color: Color(0xffFD9317),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins"),
                              ),
                            ),
                            Text("data")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                        width: 32.0,
                      ),
                      Container(
                        height: 60,
                        width: 71,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xffFD9317),
                            ),
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
                              child: Text(
                                "08 TO 10",
                                style: TextStyle(
                                    color: Color(0xffFD9317),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins"),
                              ),
                            ),
                            Text("data")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                        width: 32.0,
                      ),
                      Container(
                        height: 60,
                        width: 72,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xffFD9317),
                            ),
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
                              child: Text(
                                "08 TO 10",
                                style: TextStyle(
                                    color: Color(0xffFD9317),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins"),
                              ),
                            ),
                            Text("data")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                        width: 32.0,
                      ),
                      Container(
                        height: 60,
                        width: 71,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xffFD9317),
                            ),
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
                              child: Text(
                                "08 TO 10",
                                style: TextStyle(
                                    color: Color(0xffFD9317),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins"),
                              ),
                            ),
                            Text("data")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                        width: 32.0,
                      ),
                      Container(
                        height: 60,
                        width: 71,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xffFD9317),
                            ),
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
                              child: Text(
                                "08 TO 10",
                                style: TextStyle(
                                    color: Color(0xffFD9317),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins"),
                              ),
                            ),
                            Text("data")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 31.0,
                        width: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(30.0),
                        child: Icon(
                          Icons.add,
                          color: Color(0xffFD9317),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ]),
          ]),
        ));
  }
}
