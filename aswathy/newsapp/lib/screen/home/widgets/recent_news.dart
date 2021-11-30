import 'package:flutter/material.dart';

import 'custom_tile.dart';

class Recentnews extends StatelessWidget {
  const Recentnews({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Customtile(screenWidth: screenWidth);
        },
      ),
    );
  }
}
