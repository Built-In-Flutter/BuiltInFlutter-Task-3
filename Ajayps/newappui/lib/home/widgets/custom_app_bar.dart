import 'dart:ui';

import 'package:flutter/material.dart';
import '../../screen/config/var.dart' as configvar;
import 'portfolio.dart';

class customAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(Profile.routeName2);
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'),
                  radius: 23,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '12 oct, 2021 ',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          Icon(
            Icons.search,
            size: 30,
          )
        ],
      ),
    );
  }
}
