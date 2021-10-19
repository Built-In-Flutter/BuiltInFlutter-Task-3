import 'package:flutter/material.dart';

import 'customtile.dart';

class recentnews extends StatelessWidget {
  const recentnews({
    Key? key,
    required this.screenwidth,
  }) : super(key: key);

  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return customtile(screenwidth: screenwidth);
        },
      ),
    );
  }
}
