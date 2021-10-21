import 'package:flutter/material.dart';
import 'package:edwin/Screens/config/var/var.dart' as configvar;

class CustomTile2 extends StatelessWidget {
  const CustomTile2({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Container(
              height: 80,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  configvar.newspaperImage3,
                  fit: BoxFit.cover,
                ),
              )),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenWidth * 0.5,
                child: Text(
                  'Best painting ever drawn in Mankind!',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .merge(
                          TextStyle(fontWeight: FontWeight.w700)),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(iconData: Icons.calendar_today, title: 'Mar 10, 2021',),
                    const SizedBox(width: 20),
                    IconText(iconData: Icons.lock_clock, title: '12 min read',),
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
        const SizedBox(width: 6),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}