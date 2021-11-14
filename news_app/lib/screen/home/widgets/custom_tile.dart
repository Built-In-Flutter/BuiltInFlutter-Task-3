import 'package:flutter/material.dart';
import 'package:news_app/screen/config/var/var.dart' as configvar;

import '../home_page.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                configvar.coverImg,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth * 0.6,
                child: Text(
                  'This is the headline of the sample news. Headlines are very important.',
                  style: Theme.of(context).primaryTextTheme.bodyText1!.merge(
                        TextStyle(fontWeight: FontWeight.w700),
                      ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                      iconData: Icons.calendar_today,
                      title: "Nov 13 2021",
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    IconText(
                      iconData: Icons.timelapse,
                      title: "Nov 13 2021",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}