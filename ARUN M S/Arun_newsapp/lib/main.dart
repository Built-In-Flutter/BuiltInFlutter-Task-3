import 'package:flutter/material.dart';
import 'package:newsapp/screen/details/detailNews.dart';
import 'package:newsapp/screen/profile/profile.dart';
import './screen/home/homepg.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Arun_New',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Homepage(),
        debugShowCheckedModeBanner: false,
        routes: {
          DetailNews.routName: (ctx) => DetailNews(),
          ProfileDetails.routName1: (ctx) => ProfileDetails()
        });
  }
}
