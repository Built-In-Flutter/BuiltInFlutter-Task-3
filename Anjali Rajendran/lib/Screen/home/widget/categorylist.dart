import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 35,
              left: 35,
              top: 5,
            ),
            child: Text('All', style: TextStyle(color: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 30,
              left: 15,
              top: 5,
            ),
            child: Text('Sports', style: TextStyle(color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 30,
              left: 15,
              top: 5,
            ),
            child: Text('Local', style: TextStyle(color: Colors.white)),
          ),
          Padding(
            padding:
            const EdgeInsets.only(right: 15, left: 15, top: 5, bottom: 5),
            child: Text('Events', style: TextStyle(color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 30,
              left: 15,
              top: 5,
            ),
            child: Text('Nature', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}