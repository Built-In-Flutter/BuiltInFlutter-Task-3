import 'package:ashiktasks/Components/CustomAppBar.dart';
import 'package:ashiktasks/Components/Headline.dart';
import 'package:ashiktasks/Components/NewsList.dart';
import 'package:ashiktasks/Components/Recentnews.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            CustomAppBar(),
            Headline(),
            SizedBox(height: 20),
            NewsList(),
            Recentnews(),
          ],
        ),
      ),
    );
  }
}
