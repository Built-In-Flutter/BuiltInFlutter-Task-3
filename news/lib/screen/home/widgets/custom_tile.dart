import 'package:flutter/material.dart';
import '../../config/var/var.dart';

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
          SizedBox(
            height: 80,
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                newsPaperImage,
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
              SizedBox(
                width: screenWidth * 0.5,
                child: Text(
                  "This is a little way to create flutter",
                  style: Theme.of(context).primaryTextTheme.bodyText1!.merge(
                        const TextStyle(
                          fontWeight: FontWeight.w700,
                          wordSpacing: 2.5,
                        ),
                      ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  IconText(
                    title: 'Jan 10, 2021',
                    iconData: Icons.calendar_today,
                  ),
                  SizedBox(width: 20),
                  IconText(
                    title: '10 min Read',
                    iconData: Icons.timer,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  const IconText({Key? key, required this.iconData, required this.title})
      : super(key: key);

  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 17,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
