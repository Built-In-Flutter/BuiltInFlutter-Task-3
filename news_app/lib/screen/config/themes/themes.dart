// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData themes() {
  return ThemeData(
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black45,
      ),
    ),
    primaryTextTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: Colors.blue[900],
        fontWeight: FontWeight.w700,
      ),
      headline6: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.blue[900],
      ),
      bodyText1: TextStyle(
        color: Colors.black45,
      ),
    ),
  );
}
