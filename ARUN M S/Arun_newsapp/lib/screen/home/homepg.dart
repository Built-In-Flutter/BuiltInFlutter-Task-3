import 'package:flutter/material.dart';
import 'package:newsapp/screen/config/var/var.dart' as configimg;
import 'package:newsapp/screen/home/widget/customTile.dart';
import 'package:newsapp/screen/profile/profile.dart';

import 'widget/categoryList.dart';
import 'widget/customAppBar.dart';
import 'widget/homeBody.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(ProfileDetails.routName1);
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
