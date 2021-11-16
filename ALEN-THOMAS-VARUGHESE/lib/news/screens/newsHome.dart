import 'package:flutter/material.dart';
import 'package:profileapp/news/config/themes.dart';
import 'package:profileapp/news/widgets/categoriesTab.dart';
import 'package:profileapp/news/widgets/newsTiles/newsTile1.dart';
import 'package:profileapp/news/widgets/newsTiles/newsTile2.dart';
import 'package:profileapp/news/widgets/newsTiles/newsTile3.dart';
import 'package:profileapp/news/widgets/newsTiles/newsTile4.dart';
import 'package:profileapp/news/widgets/newsTopBar.dart';
import 'package:profileapp/news/widgets/topNewsCard.dart';

class NewsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themes(),
      home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: ListView(
                children: [
                  NewsTopBar(),
                  CategoriesTab(),
                  TopNewsCard(),
                  NewsTile1(),
                  NewsTile2(),
                  NewsTile3(),
                  NewsTile4(),
                ],
              ),
            ),
          )),
    );
  }
}