import 'package:flutter/material.dart';
import 'package:news_ui/screen/details/detail_news.dart';

class MainBar extends StatelessWidget {
  const MainBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.network(
            'https://images.unsplash.com/photo-1632435499152-18838be77960?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
          ),
        ),
        Container(
          width: screenWidth * 0.8,
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            'Global outage shuts down FB, Instagram, WhatsApp',
            style: Theme.of(context).primaryTextTheme.headline5,
          ),
        ),
      ],
    );
  }
}
