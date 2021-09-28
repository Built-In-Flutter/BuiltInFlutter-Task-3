import 'package:flutter/material.dart';
import 'widgets/category_list.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/recent_news.dart';
import 'widgets/title_bar.dart';

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
            const CustomAppBar(),
            TitleBar(screenWidth: screenWidth),
            const CategoryList(),
            RecentNews(screenWidth: screenWidth),
          ],
        ),
      ),
    );
  }
}
