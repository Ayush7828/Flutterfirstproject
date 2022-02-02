import 'package:flutter/material.dart';
import 'package:login/utils/routes.dart';

class Rioscheduled extends StatelessWidget {
  const Rioscheduled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(
              Icons.edit,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
        backgroundColor: Color(0xffFD9317),
        centerTitle: true,
        title: Text(
          "Rio Store",
          style: TextStyle(
              fontFamily: "SF Pro Text",
              fontWeight: FontWeight.w600,
              fontSize: 22.0,
              color: Color(0xffFFFFFF),
              letterSpacing: -0.02),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Store Name",
                    labelStyle: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14.0,
                      color: Color(0xffBDC6CF),
                    )),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Store Address",
                    labelStyle: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14.0,
                      color: Color(0xffBDC6CF),
                    )),
              ),
            ),
            SizedBox(
              height: 45.0,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.createscheduled);
              },
              child: Container(
                height: 54.0,
                width: 380.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xffFD9317),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    "Create Schedule",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45.0,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.viewscheduled);
              },
              child: Container(
                height: 54.0,
                width: 380.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xffFD9317),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    "View Schedule",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
