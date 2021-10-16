import 'package:flutter/material.dart';
import 'package:newzera/screen/aboutus.dart';
import 'screen/config/themes/themes.dart';
import 'screen/details/detail_news.dart';
import 'screen/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themes(),
      debugShowCheckedModeBanner: false,
      routes: {
        DetailNews.routeName : (ctx)=> DetailNews(),
        AboutUS.routeName : (ctx)=> AboutUS(),
      },
      home: Homepage(),
    );
  }
}
