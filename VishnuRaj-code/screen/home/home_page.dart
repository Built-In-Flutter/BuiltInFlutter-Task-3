import 'package:flutter/material.dart';
import 'widget/categorylist.dart';
import 'widget/custom_tile.dart';
import 'widget/customappbar.dart';
import 'widget/recentnews.dart';
import 'widget/titlebar.dart';


class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            titlebar(screenWidth: screenWidth),
            Category_List(),
            RecentNews(screenWidth: screenWidth),
          ],
        ),
      ),
    );
  }
}

