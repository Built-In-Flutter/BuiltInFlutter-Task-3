import 'package:flutter/material.dart';

import 'news_ui.dart';

class NewsHorizontalCards extends StatelessWidget {
  String newsType;
  String horizontalCardImage;
  String horizontalCardNews;
  String horizontalCardPostTime;
  String horizontalCardReadTime;

  NewsHorizontalCards({
    required this.newsType,
    required this.horizontalCardImage,
    required this.horizontalCardNews,
    required this.horizontalCardPostTime,
    required this.horizontalCardReadTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 15),
      width: 330,
      height: 360,
      decoration: BoxDecoration(
          border: Border.all(
            width: .5,
            color: Colors.grey.shade400,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                MyBullet(),
                SizedBox(
                  width: 10,
                ),
                Text(
                  newsType,
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Container(
            width: 300,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              child: Image.network(
                horizontalCardImage,
                fit: BoxFit.cover,
                width: 300,
                height: 180,
              ),
            ),
          ),
          Container(
            width: 300,
            child: Text(
              horizontalCardNews,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 21),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            child: Row(
              children: [
                Text(
                  "$horizontalCardPostTime hours ago",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                SizedBox(
                  width: 20,
                ),
                MyBullet(),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "$horizontalCardReadTime min read",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NewsVerticalCards extends StatelessWidget {
  String verticalCardImage;
  String verticalCardNews;
  String verticalCardNewsDetails;
  String verticalCardPostTime;
  String verticalCardReadTime;

  NewsVerticalCards({
    required this.verticalCardImage,
    required this.verticalCardNews,
    required this.verticalCardPostTime,
    required this.verticalCardReadTime,
    required this.verticalCardNewsDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400, width: .5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                verticalCardImage,
                fit: BoxFit.cover,
                width: 120,
                height: 170,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            width: 200,
            child: Column(
              children: [
                Text(
                  verticalCardNews,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  verticalCardNewsDetails,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 200,
                  child: Row(
                    children: [
                      Text(
                        "$verticalCardPostTime hours ago",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "$verticalCardReadTime min read",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
