import 'package:flutter/material.dart';
import 'package:newsapp/screen/details/detail_news.dart';

import 'main_bar.dart';
class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Breaking News',
              style: Theme.of(context).primaryTextTheme.headline3),
              const SizedBox(height: 10,),
          GestureDetector(
            onTap: () {Navigator.of(context).pushNamed(DetailsNews.routeName);},
            child: Mainbar(),),
          
              
        ],
      ),
    );
  }
}


