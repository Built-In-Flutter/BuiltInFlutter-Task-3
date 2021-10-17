import 'package:flutter/material.dart';

class Customtile extends StatelessWidget {
  const Customtile({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 100,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/art.jpg',
                  fit: BoxFit.cover,
                )),
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
                    'Art is the new way of expressing human emotions',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1!
                        .merge(TextStyle(fontWeight: FontWeight.w700)),
                  )),
              const SizedBox(width: 12),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                      iconData: Icons.calendar_today_rounded,
                      title: '17 Oct, 2021',
                    ),
                    const SizedBox(width: 20),
                    IconText(
                      iconData: Icons.lock_clock,
                      title: '10 Min Read',
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
        Icon(iconData, size: 17),
        const SizedBox(width: 6),
        Text(title, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
