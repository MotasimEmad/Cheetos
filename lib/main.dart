import 'package:flutter/material.dart';
import 'package:snaks/screens/details.dart';
import 'package:snaks/screens/homeScreen.dart';
import 'package:snaks/screens/login.dart';
import 'package:snaks/screens/mainScreen.dart';
import 'package:snaks/screens/profile.dart';
import 'package:snaks/screens/settings.dart';
import 'package:snaks/screens/signup.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Cairo",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset("assets/images/pngItem.png"),
        nextScreen: Login(),
        backgroundColor: Color(0xff416d6d),
        splashTransition: SplashTransition.rotationTransition,
      ),
      routes: {
        "login": (context) {
          return Login();
        },
        "signup": (context) {
          return SignUp();
        },
        "home": (context) {
          return MainScreen();
        },
        "details": (context) {
          return DetailsScreen();
        },
        "profile": (context) {
          return ProfileScreen();
        },
        "setting": (context) {
          return SettingScreen();
        }
      },
    );
  }
}
