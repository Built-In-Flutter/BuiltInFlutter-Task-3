import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "All",
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Sports",
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Fastrack",
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Movies",
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Technology",
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Fastrack",
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "All",
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Sports",
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Fastrack",
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          )
        ],
      ),
    );
  }
}
