import 'package:flutter/material.dart';
class Const{

  static String appName = "Social_app";

  static Color badgeColor = Colors.red;
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.blue;
  static Color darkAccent = Colors.blueAccent;
  static Color lightBackGround = Color(0xfffcfcff);
  static Color blackBackGround = Colors.black;


  static ThemeData appTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: blackBackGround,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: blackBackGround,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        title: TextStyle(
          color: lightBackGround,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );


}