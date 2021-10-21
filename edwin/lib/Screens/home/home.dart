import 'package:flutter/material.dart';
import 'widgets/category_list.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/recent_news.dart';
import 'widgets/title_bar.dart';

class Homepage extends StatelessWidget {
  static const routename = 'HomePage';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            const Divider(thickness: 2,),
            const CategoryList(),
            const Divider(thickness: 2,),
            TitleBar(screenWidth: screenWidth),
            RecentNews(screenWidth: screenWidth),
          ],
        ),
      ),
    );
  }
}





