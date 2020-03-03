

//import 'dart:js';

//import 'dart:js';

//import 'dart:js';

//import 'dart:js';

//import 'dart:js';



import 'package:flutter/material.dart';
import 'package:flutter_app/pengaturan/app.dart';
import 'package:flutter_app/screen/backendnav.dart';
import 'package:flutter_app/screen/kelas.dart';
import 'package:flutter_app/screen/login.dart';
import 'package:flutter_app/screen/register.dart';
import 'package:flutter_app/screen/forgot.dart';
import 'package:flutter_app/screen/home.dart';
import 'package:flutter_app/screen/upskill.dart';
import 'package:flutter_app/screen/d1.dart';
import 'package:flutter_app/onboard/onboarding_screens.dart';
import 'package:flutter_app/screen/src.dart';
import 'package:flutter_app/teacherprofil/profile.dart';
import 'package:flutter_app/userpeofile/userprof.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "COBA",
    initialRoute: "/",
    routes: {
      "/" : (context) => OnboardingScreen(),
      RegisterPage.routeName : (context) => RegisterPage(),
      ForgotPage.routeName : (context) => ForgotPage(),
      HomePage.routeName : (context) =>HomePage(),
      SkillPage.routeName :(context) =>SkillPage(),
      BottomNavBar.routeName : (context) =>BottomNavBar(),
      KPage.routeName: (context) =>KPage(),
      TestPage.routeName: (context) =>TestPage(),
      LoginPage.routeName: (context) =>LoginPage(),
      NotifikasiPage.routeName: (context) =>NotifikasiPage(),
      Profile.routeName: (context) =>Profile(),
      Home.routeName: (context) =>Home(),
      App.routeName: (context) =>App(),
    }
  ));
}