import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/screen/detail/portfolio.dart';
import 'package:newsapp/screen/home/widgets/category_list.dart';
import 'package:newsapp/screen/home/widgets/custom_app_bar.dart';
import 'package:newsapp/screen/home/widgets/recent_news.dart';
import 'package:newsapp/screen/home/widgets/title_bar.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {Navigator.of(context).pushNamed(Portfolio.routeName);},
              child: CustomAppBar()),
          TitleBar(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Discover',style: TextStyle(fontSize: 28,color: Color.fromRGBO(0, 0, 160, 1),shadows: [
              Shadow(
                blurRadius: 6.0,
                color: Colors.black54,
                offset: Offset(0.5,0.5),
              ),]),),
          ),
          CategoryList(),
          Recentnews(),
        ],
      ),),
    );
  }
}

