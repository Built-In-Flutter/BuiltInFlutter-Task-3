import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('All'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('International'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Media'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Magazine'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Business'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('National'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Technology'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Educational'),
          ),
        ],
      ),
      margin: EdgeInsets.all(25.0),
    );
  }
}