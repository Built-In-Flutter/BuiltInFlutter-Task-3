import 'package:flutter/material.dart';
import 'package:learn/screen/details/detail_news.dart';

import 'widgets/mainbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            TitleBar(screenWidth: screenWidth),
            CategoryList(),
            RecentNews(screenWidth: screenWidth)
          ],
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'All',
              style: TextStyle(
                color: Color(0xFF222831),
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'SofiaMedium',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Tech',
              style: TextStyle(
                color: Color(0xFF222831),
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'SofiaMedium',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sports',
              style: TextStyle(
                color: Color(0xFF222831),
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'SofiaMedium',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'global',
              style: TextStyle(
                color: Color(0xFF222831),
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'SofiaMedium',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('All',
                style: TextStyle(
                  color: Color(0xFF222831),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SofiaMedium',
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Tech',
                style: TextStyle(
                  color: Color(0xFF222831),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SofiaMedium',
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Tech',
              style: TextStyle(
                color: Color(0xFF222831),
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'SofiaMedium',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sports',
              style: TextStyle(
                color: Color(0xFF222831),
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'SofiaMedium',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'global',
              style: TextStyle(
                color: Color(0xFF222831),
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'SofiaMedium',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('All',
                style: TextStyle(
                  color: Color(0xFF222831),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SofiaMedium',
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Sports',
                style: TextStyle(
                  color: Color(0xFF222831),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SofiaMedium',
                )),
          ),
        ],
      ),
    );
  }
}

class RecentNews extends StatelessWidget {
  const RecentNews({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return customTile(screenWidth: screenWidth);
          }),
    );
  }
}

// ignore: camel_case_types
class customTile extends StatelessWidget {
  const customTile({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 11),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff2e3033),
                  blurRadius: 4,
                  offset: Offset(0, 1),
                ),
              ],
              color: Color(0xff393e4f),
            ),
            height: 80,
            width: 100,
            child: Image.asset(
              'fonts/news.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth * 0.5,
                child: Text(
                  'This is the heading of all the news ',
                  style: TextStyle(
                    color: Color(0xFF222831),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SofiaMedium',
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconText(
                      iconData: Icons.calendar_today,
                      title: '12 NOV, 2021',
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    iconText(
                      iconData: Icons.lock_clock,
                      title: '10 min read',
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class iconText extends StatelessWidget {
  final IconData iconData;
  final String title;
  iconText({required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          title,
          style: TextStyle(
            color: Color(0xFF222831),
            fontSize: 16,
            fontFamily: 'SofiaMedium',
          ),
        ),
      ],
    );
  }
}

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      child: Column(
        children: [
          Text(
            'Breaking News',
            style: TextStyle(
                color: Color(0xFF222831),
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'SofiaBold'),
            maxLines: 3,
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: (){ Navigator.of(context).pushNamed(Detailsnews.routeName);},
            child: MainBar()),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 24,
                      backgroundColor: Color(0xFF222831),
                      backgroundImage: AssetImage('fonts/memo.png')),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Raju Bhai',
                    style: TextStyle(
                      color: Color(0xFF222831),
                      fontSize: 16,
                      fontFamily: 'SofiaMedium',
                    ),
                  ),
                ],
              ),
              Text(
                'Nov 23 2021',
                style: TextStyle(
                  color: Color(0xFF222831),
                  fontSize: 16,
                  fontFamily: 'SofiaMedium',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF222831),
      child: Padding(
      
        padding: const EdgeInsets.all(10.0),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                    radius: 24,
                    backgroundColor: Color(0xFF222831),
                    backgroundImage: AssetImage('fonts/memo.png')),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '12 NOV, 2021',
                  style: TextStyle(
                    color:Color(0xFFE1E8EB),
                    fontSize: 16,
                    fontFamily: 'SofiaMedium',
                  ),
                ),
              ],
            ),
            Icon(
              Icons.search,
              size: 25,
              color: Color(0xFFE1E8EB),
            )
          ],
        ),
      ),
    );
  }
}
