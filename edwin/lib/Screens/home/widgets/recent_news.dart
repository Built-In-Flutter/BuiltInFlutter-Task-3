import 'package:edwin/Screens/home/widgets/news_tile1.dart';
import 'package:edwin/Screens/home/widgets/news_tile2.dart';
import 'package:edwin/Screens/home/widgets/news_tile3.dart';
import 'package:flutter/material.dart';
import 'news_tile.dart';

class RecentNews extends StatelessWidget {
  const RecentNews({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
          scrollDirection: Axis.vertical,
      children: [
        CustomTile(screenWidth: screenWidth),
        CustomTile1(screenWidth: screenWidth),
        CustomTile2(screenWidth: screenWidth),
        CustomTile3(screenWidth: screenWidth,)
      ],
    ));
  }
}
