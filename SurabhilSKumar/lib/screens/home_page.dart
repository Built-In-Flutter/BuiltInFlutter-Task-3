import 'package:firstapp/screens/config/images/news_img.dart';
import 'package:firstapp/screens/config/images/profile.dart';
import 'package:firstapp/screens/detailed_news.dart';
import 'package:firstapp/screens/widgets/recent_news.dart';
import 'package:flutter/material.dart';

import 'widgets/Category.dart';
import 'widgets/Redirect_heading.dart';
import 'widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);
  static const routeName = 'NewsApps';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News App',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white60,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 13.0, 13.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBar(),

                  //const SizedBox(width: 150.0),
                  Icon(
                    Icons.search,
                    size: 30.0,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  'Breaking News',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(DetailedNews.routeName);
                  },
                  child: HeadingRe()),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(dp),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text('Surabhil Ssk'),
                      ],
                    ),
                    Text('17 Nov, 2021')
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CategoryList(),
              Recentnews(screenWidth: screenWidth),
            ],
          ),
        ),
      ),
    );
  }
}
