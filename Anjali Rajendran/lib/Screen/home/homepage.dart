import 'package:flutter/material.dart';
import 'package:newapp/screen/config/var/var.dart' as configimg;
import 'package:newapp/screen/home/widget/customtile.dart';
import 'package:newapp/screen/profile.dart';

import 'widget/categorylist.dart';
import 'widget/customappbar.dart';
import 'widget/homebody.dart';

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
                    Navigator.of(context).pushNamed(Home.routName1);
                  },
                  child: CustomAppBar()),
              HomeBody(),
              SizedBox(
                height: 5,
              ),
              CategoryList(),
              ListOne(),
            ],
          )),backgroundColor: Colors.black,
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