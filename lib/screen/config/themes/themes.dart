import 'package:flutter/material.dart';

ThemeData themes() {
  return ThemeData(
      primarySwatch: Colors.lightBlue,
      textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black45, fontStyle: FontStyle.italic)),
      primaryTextTheme: TextTheme(
        headline4:
        TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic),
        headline3: TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
        headline5: TextStyle(color: Colors.black54, fontSize: 20, fontStyle: FontStyle.italic),
        bodyText1: TextStyle(color: Colors.black54, fontStyle: FontStyle.italic, fontSize: 20),
      ));
}