import 'package:flutter/material.dart';
import 'package:newsapp/screen/details/detail_news.dart';
import 'package:newsapp/screen/home/home_page.dart';

import 'screen/config/themes/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themes(),
      debugShowCheckedModeBanner: false,
      routes: {
        DetailsNews.routeName : (ctx)=> DetailsNews(),
      },
      home: Homepage(),
    );
  }

  
}


