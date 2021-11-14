import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/screen/config/themes/themes.dart';
import 'package:news_app/screen/details/detail_news.dart';
import 'package:news_app/screen/home/widgets/portfolio.dart';
import 'home/home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: themes(),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        Detailsnews.routeName : (ctx)=> Detailsnews(),
        PortfolioApp.routeName: (ctx) => PortfolioApp(),
      },
    );
  }

 
}
