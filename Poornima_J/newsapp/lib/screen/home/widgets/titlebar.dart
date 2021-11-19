import 'package:flutter/material.dart';
import 'package:newsapp/screen/details/detailed_news.dart';
import 'package:newsapp/screen/home/widgets/mainbar.dart';

class Titlebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Breaking News",
            style: TextStyle(
                color: Colors.brown[900],
                fontSize: 30,
                fontFamily: "Source Sans Pro",
                letterSpacing: 2,
                wordSpacing: 2,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(DetailedNews.routename);
            },
            child: mainbar(),
          ),
        ],
      ),
    );
  }
}
