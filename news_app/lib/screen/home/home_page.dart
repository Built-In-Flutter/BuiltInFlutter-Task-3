// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:news_app/screen/home/widgets/category_list.dart';
import 'package:news_app/screen/home/widgets/recent_news.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_tile.dart';
import 'widgets/titlebar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            TitleBar(screenWidth: screenWidth),
            Container(
              height: 50,
              child: CategoryList(),
            ),
            RecentNews(screenWidth: screenWidth),
          ],
        ),
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData iconData;
  final String title;
  IconText({required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 17,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
