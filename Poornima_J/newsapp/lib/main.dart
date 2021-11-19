import 'package:flutter/material.dart';
import 'package:newsapp/screen/details/detailed_news.dart';
import 'package:newsapp/screen/home/widgets/Profile.dart';
import 'screen/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Newsapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        DetailedNews.routename: (ctx) => DetailedNews(),
        Profile.routename: (ctx) => Profile()
      },
      home: HomePage(),
    );
  }
}
