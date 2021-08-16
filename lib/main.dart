
import 'package:dance_id/account/edit_profile.dart';
import 'package:dance_id/components/mainPage.dart';
import 'package:dance_id/components/navscreen.dart';
import 'package:dance_id/components/ticket_selling.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'components/home.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}


class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds:Home(),
      backgroundColor: Colors.grey[90],

      image : Image.asset("images/logo.png", width: 190.03, height: 168.15,),
      // loadingText: Text("Loading"),
      photoSize: 100,
    );
  }
}


