import 'package:flutter/material.dart';
import 'widgets/CategoryList.dart';
import 'widgets/Recentnews.dart';
import 'widgets/customAppBar.dart';
import 'widgets/titlebar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            Card(
              child: Titlebar(),
            ),
            CategoryList(),
            Recentnews()
          ],
        ),
      ),
    );
  }
}
