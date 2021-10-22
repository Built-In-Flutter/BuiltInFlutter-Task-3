import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:newsapp_ui_by_abhishek/Screens/config/var/var.dart' as configvar;
import 'package:newsapp_ui_by_abhishek/Screens/details/detail_news.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hot News ',
              style: Theme.of(context).primaryTextTheme.headline3),
              const SizedBox(height: 10),
          GestureDetector(
            onTap: (){Navigator.of(context).pushNamed(DetailNews.routename);},
            child: const MainBar()),
        ],
      ),
    );
  }
}
