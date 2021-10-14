import 'package:flutter/material.dart';
import 'package:news/screen/details/detail_news.dart';
import 'screen/config/themes/themes.dart';
import 'screen/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themes(),
      debugShowCheckedModeBanner: false,
      routes: {DetailsNews.routeName: (ctx) => DetailsNews()},
      home: Homepage(),
    );
  }
}