import 'package:flutter/material.dart';
import 'package:news_app/screen/details/detailNews.dart';
import 'package:news_app/screen/home/widget/mainBar.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Breaking News",
            style: TextStyle(
                fontSize: 35, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(DetailNews.routName);
            },
            child: MainBar(),
          ),
        ],
      ),
    );
  }
}
