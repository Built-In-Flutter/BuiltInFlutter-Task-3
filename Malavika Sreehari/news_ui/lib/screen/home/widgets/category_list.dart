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
            padding: const EdgeInsets.all(8.0),
            child: Text('All'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Global'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('National'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Educational'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Business'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Entertainment'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Technology'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Science'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Health'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Sports'),
          ),
        ],
      ),
    );
  }
}
