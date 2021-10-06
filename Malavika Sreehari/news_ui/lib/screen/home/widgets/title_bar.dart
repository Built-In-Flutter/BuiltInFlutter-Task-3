import 'package:flutter/material.dart';
import 'package:news_ui/screen/details/detail_news.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Breaking News',
              style: Theme.of(context).primaryTextTheme.headline4),
          const SizedBox(height: 10),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(DetailsNews.routeName);
              },
              child: MainBar()),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=688&q=80'),
                  ),
                  const SizedBox(width: 10),
                  Text('Lavender',
                      style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
              Text('4 Oct, 2021', style: Theme.of(context).textTheme.bodyText1),
            ],
          )
        ],
      ),
    );
  }
}

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
