import 'package:flutter/material.dart';
import 'package:news_app/screen/details/detailNews.dart';
import 'package:news_app/screen/profile/profile.dart';
import './screen/home/homepg.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shalim_News',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Homepage(),
        debugShowCheckedModeBanner: false,
        routes: {
          DetailNews.routName: (ctx) => DetailNews(),
          Profile.routName1: (ctx) => Profile()
        });
  }
}
