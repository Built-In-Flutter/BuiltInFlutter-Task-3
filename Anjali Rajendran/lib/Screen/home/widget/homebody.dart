import 'package:flutter/material.dart';
import 'package:newapp/screen/config/var/var.dart' as configimg;
import 'package:newapp/screen/detailNews.dart';
import 'package:newapp/screen/home/widget/mainbar.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Breaking News",
            style: TextStyle(
                fontSize: 35, color: Colors.deepOrange, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(DetailNews.routName);
            },
            child: MainBar(),
          ),
        ],
      ),
    );
  }
}