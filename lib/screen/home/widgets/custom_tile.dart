import 'package:flutter/material.dart';

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
            height: 100,
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                  'https://th.thgim.com/sport/cricket/5hw6cg/article36982011.ece/ALTERNATES/FREE_660/MPL'),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth * 0.5,
                child: Text(
                  'Fan-inspired Indian team jersey for T20 World Cup unveiled',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyText1!
                      .merge(TextStyle(fontWeight: FontWeight.w700)),
                ),
              ),
              const SizedBox(height: 22),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                        iconData: Icons.calendar_today, title: 'Sept 12, 2021'),
                    const SizedBox(width: 30),
                    IconText(iconData: Icons.lock_clock, title: '8 min Read')
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
          size: 17,
        ),
        const SizedBox(width: 8),
        Text(title, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}