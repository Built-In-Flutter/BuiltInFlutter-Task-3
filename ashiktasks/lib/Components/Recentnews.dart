import 'package:ashiktasks/Components/ListTile.dart';
import 'package:flutter/material.dart';

class Recentnews extends StatelessWidget {
  const Recentnews({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return ListTiles();
          }),
    );
  }
}
