import 'package:flutter/material.dart';
import 'package:newapp/screen/detailnews.dart';
import 'package:newapp/screen/profile.dart';
import './screen/home/homepage.dart';

void main() {
  runApp(newapp());
}

class newapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Anjali Rajendran',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Homepage(),
        debugShowCheckedModeBanner: false,
        routes: {
          DetailNews.routName: (ctx) => DetailNews(),
          Home.routName1: (ctx) => Home()
        });
  }
}

