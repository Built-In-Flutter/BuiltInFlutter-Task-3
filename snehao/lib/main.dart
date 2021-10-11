import 'package:flutter/material.dart';
import 'package:newsapp/pages/home.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    title: "News App",
    theme: ThemeData(fontFamily: "Poppins"),
  ));
}
