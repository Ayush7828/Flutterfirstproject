import 'package:flutter/material.dart';
import 'package:login/pages/rio_item.dart';
import 'package:login/utils/routes.dart';

class Riopage extends StatelessWidget {
  const Riopage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffFD9317),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Stores',
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
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 18.0),
                      child: Container(
                        height: 52.0,
                        width: 142,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffFD9319),
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 7,
                                color: Color(0xffFD9317).withOpacity(0.15),
                                offset: Offset(0, 4),
                                spreadRadius: 1,
                              )
                            ]),
                        child: Container(
                          color: Color(0xffFD9317),
                          child: Center(
                            child: Text(
                              'Stores',
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 18.0),
                      child: Container(
                        height: 52.0,
                        width: 142,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffFD9319),
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 7,
                                color: Color(0xffFD9317).withOpacity(0.15),
                                offset: Offset(0, 4),
                                spreadRadius: 1,
                              )
                            ]),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, MyRoutes.employee);
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'Employees',
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    color: Color(0xffFD9317),
                                    fontStyle: FontStyle.normal),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Divider(
                height: 1.0,
                thickness: 1.5,
                color: Color(0xffDADADA),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 30.0),
                  child: Text(
                    "All Employees",
                    style: TextStyle(
                        color: Color(0xffAEB7C0),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemBuilder: (ctx, index) => Rioitem(),
                itemCount: 4,
              ),
            ),
          )
        ],
      ),
    );
  }
}
