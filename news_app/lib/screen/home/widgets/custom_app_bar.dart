// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/screen/config/var/var.dart' as configvar;
import 'package:news_app/screen/home/widgets/portfolio.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

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
                  Navigator.of(context).pushNamed(PortfolioApp.routeName);
                },
                child: CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(configvar.profileImg),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "13 Nov 2021",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          Icon(
            Icons.search,
            size: 30,
          ),
        ],
      ),
    );
  }
}
