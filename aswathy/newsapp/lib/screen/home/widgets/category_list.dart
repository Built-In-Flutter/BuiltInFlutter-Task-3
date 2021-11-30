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
            child: Text('Sports'),
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Money'),
           ),
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Fun'),
           ),
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Game'),
           ),
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Case'),
           ),
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Mobile'),
           ),
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Develpoment'),
           ),
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Green'),
           ),
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Car'),
           ),
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Fun'),
           ),
        ],
      ),
    );
  }
}