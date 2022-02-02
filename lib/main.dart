import 'package:flutter/material.dart';
import 'package:login/login_page.dart';
import 'package:login/pages/add_emplyoee.dart';
import 'package:login/pages/add_schedule.dart';
import 'package:login/pages/create_scheduled.dart';
import 'package:login/pages/edit_page.dart';
import 'package:login/pages/email_page.dart';
import 'package:login/pages/employee_page.dart';
import 'package:login/pages/first_welcome.dart';
import 'package:login/pages/john_reo.dart';
import 'package:login/pages/register_page.dart';
import 'package:login/pages/reset_password.dart';
import 'package:login/pages/rio_page.dart';
import 'package:login/pages/view_scheduled.dart';

import 'package:login/utils/routes.dart';

import 'forgot_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      themeMode: ThemeMode.dark
      ,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.login: (context) => LoginPage(),
        MyRoutes.forgot: (context) => Forgotpassword(),
        MyRoutes.email: (context) => Emailpage(),
        MyRoutes.reset: (context) => Reset(),
        MyRoutes.registerp: (context) => Registerpage(),
        MyRoutes.welcome: (context) => WelcomePage(),
        MyRoutes.employee: (context) => Employeepage(),
        MyRoutes.johnPage: (context) => Johnpage(),
        MyRoutes.editpage: (context) => Editpage(),
        MyRoutes.addemploy: (context) => Addemployee(),
        MyRoutes.riostore: (context) => Riopage(),
        MyRoutes.rioscheduled: (context) => Rioscheduled(),
        MyRoutes.createscheduled: (context) => Createscheduled(),
        MyRoutes.viewscheduled: (context) => Viewscheduled(),
      },
    );
  }
}
