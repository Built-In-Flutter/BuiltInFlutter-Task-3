import 'package:ashiktasks/Components/MainDetails.dart';
import 'package:ashiktasks/Components/MainNews.dart';
import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  const Headline({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Breaking News",
            style: Theme.of(context).primaryTextTheme.headline3,
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(MainDetails.routeName);
            },
            child: MainNews(),
          ),
        ],
      ),
    );
  }
}
