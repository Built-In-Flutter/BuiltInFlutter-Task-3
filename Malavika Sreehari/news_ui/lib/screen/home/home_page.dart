import 'package:flutter/material.dart';
import 'package:news_ui/screen/home/widgets/category_list.dart';
import 'package:news_ui/screen/home/widgets/custom_app_bar.dart';
import 'package:news_ui/screen/home/widgets/recent_news.dart';
import 'package:news_ui/screen/home/widgets/title_bar.dart';

class Homepage extends StatelessWidget {
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
            CategoryList(),
            RecentNews(screenWidth: screenWidth),
          ],
        ),
      ),
    );
  }
}
