import 'package:flutter/material.dart';
import 'package:social_flutter_app_skelton/pages/main_screen.dart';
import 'package:social_flutter_app_skelton/utill/const.dart';

void main() async{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Const.appName,
      theme: Const.appTheme,
      home: MainScreen(),
    );
  }
}

