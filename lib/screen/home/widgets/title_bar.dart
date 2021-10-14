import 'package:flutter/material.dart';
import 'package:news/screen/details/detail_news.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Trending',
              style: Theme.of(context).primaryTextTheme.headline4),
          const SizedBox(height: 14),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(DetailsNews.routeName);
              },
              child: MainBar()),
          const SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1545996124-0501ebae84d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80'),
                  ),
                  const SizedBox(width: 15),
                  Text('Rohit',
                      style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
              Text('12 Sept, 2021', style: Theme.of(context).textTheme.bodyText1),
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
          borderRadius: BorderRadius.circular(25),
          child: Image.network(
            'https://images.unsplash.com/photo-1543699539-33a389c5dcfe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2070&q=80',
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: screenWidth * 1,
          padding: const EdgeInsets.only(left: 9),
          child: Text(
            'Over 10 crore Indians own cryptocurrency, highest in the world',
            style: Theme.of(context).primaryTextTheme.headline5,
          ),
        ),
      ],
    );
  }
}