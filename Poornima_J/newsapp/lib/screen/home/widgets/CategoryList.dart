import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 40,
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "All",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
              child: Text("International"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
              child: Text("Media"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
              child: Text("Business"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
              child: Text("Tech"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
              child: Text("Local"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
              child: Text("Sports"),
            ),
          ],
        ),
      ),
    );
  }
}
