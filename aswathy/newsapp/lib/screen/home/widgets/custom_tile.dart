import 'package:flutter/material.dart';
import '../../config/var/var.dart' as configvar;
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
          vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                configvar.newsPaperImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth * 0.5,
                child: Text(
                  'The Porsche Jump: The drive to keep pushing the boundaries',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyText1!
                      .merge(
                          TextStyle(fontWeight: FontWeight.w700)),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                        iconData: Icons.calendar_today,
                        title: '25 sep, 2021'),
                    const SizedBox(width: 20),
                    IconText(
                        iconData: Icons.timer,
                        title: '10 min Read'),
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

class IconText extends StatelessWidget {
  final IconData iconData;
  final String title;

  IconText({required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, size: 17),
        const SizedBox(
          width: 6,
        ),
        Text(title, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
