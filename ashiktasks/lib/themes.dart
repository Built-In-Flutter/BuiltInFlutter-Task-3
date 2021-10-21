import 'package:flutter/material.dart';

ThemeData themes() {
  return ThemeData(
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      bodyText1:TextStyle(color: Colors.black26),
    ),

    primaryTextTheme: TextTheme(
      headline3:TextStyle(
        color: Colors.blueGrey,
        letterSpacing: 2,
        ),  
      headline5: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline6: TextStyle(
        color: Colors.indigo
      ),
      bodyText1: TextStyle(color:Colors.black45,fontWeight: FontWeight.bold,fontSize: 25),
      bodyText2: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),  
      )
  
  );
}
