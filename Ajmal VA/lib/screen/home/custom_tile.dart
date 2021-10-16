import 'package:flutter/material.dart';
import '..//config/var/var.dart' as configvar;

class Customtile extends StatelessWidget {
  const Customtile({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 90,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                configvar.webimg,
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
                  "This is a little way to create a flutter news app",
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyText1!
                      .merge(const TextStyle(
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                      iconData: Icons.calendar_today,
                      title: 'Jan 12, 2021',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    IconText(
                      iconData: Icons.lock_clock,
                      title: '10 min Read',
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData iconData;
  final String title;

  IconText({required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 15,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
