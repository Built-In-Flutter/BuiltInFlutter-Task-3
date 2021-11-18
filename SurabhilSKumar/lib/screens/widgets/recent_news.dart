import 'package:firstapp/screens/config/images/news_img.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Recentnews extends StatelessWidget {
  const Recentnews({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(bottom: 17),
            child: Row(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      news2,
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 70,
                  width: 90,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: screenWidth * 0.6,
                          child: Text(
                            'It is a long established fact that a reader.',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500),
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today_outlined,
                                  size: 15.0,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '17 Nov, 2021',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade600),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Row(
                                  //mainAxisAlignment:
                                  //MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.timelapse,
                                      size: 15.0,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '10 min read',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Colors.grey.shade600),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}