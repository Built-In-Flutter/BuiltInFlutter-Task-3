import 'package:flutter/material.dart';
import 'package:news_app/screen/home/widget/customTile.dart';
import 'package:news_app/screen/profile/profile.dart';

import 'widget/categoryList.dart';
import 'widget/customAppBar.dart';
import 'widget/homeBody.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(Profile.routName1);
              },
              child: CustomAppBar()),
          HomeBody(),
          SizedBox(
            height: 5,
          ),
          CategoryList(),
          ListOne(),
        ],
      )),
    );
  }
}

class ListOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return CustomTile();
        },
      ),
    );
  }
}
