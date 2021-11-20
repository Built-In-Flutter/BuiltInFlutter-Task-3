import 'package:flutter/material.dart';

class CategerySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget verticalDivider() {
      return VerticalDivider(
        color: Colors.grey,
        thickness: 1.5,
      );
    }

    return Container(
      height: 15,
      margin: EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text("Top"),
          ),
          verticalDivider(),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text("Trending"),
          ),
          verticalDivider(),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text("Global"),
          ),
          verticalDivider(),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text("Sports"),
          ),
          verticalDivider(),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text("International"),
          ),
          verticalDivider(),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text("Editor Choice"),
          ),
        ],
      ),
    );
  }
}
