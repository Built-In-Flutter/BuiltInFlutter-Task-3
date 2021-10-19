import 'package:flutter/material.dart';

import 'widgets/categorylist.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/recentnews.dart';
import 'widgets/titlebar.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          customAppBar(),
          const titlebar(),
          categorylist(),
          recentnews(screenwidth: screenwidth),
        ]),
      ),
    );
  }
}
