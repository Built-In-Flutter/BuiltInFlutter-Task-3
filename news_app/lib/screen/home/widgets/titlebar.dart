// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/screen/details/detail_news.dart';
import 'package:news_app/screen/home/widgets/main_bar.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Breaking News',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(Detailsnews.routeName);
            },
            child: MainBar(),
          ),
        ],
      ),
    );
  }
}
