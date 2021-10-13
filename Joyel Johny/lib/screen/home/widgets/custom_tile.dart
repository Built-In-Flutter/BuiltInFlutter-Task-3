import 'package:flutter/material.dart';
import 'package:news_app/screen/config/var/var.dart' as configvar;

class CustomTile extends StatelessWidget {
  const CustomTile({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 90,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                configvar.newspaperImage,
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
                width: screenWidth * 0.5,
                child: Text(
                  "This just a way to create flutter.",
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyText1!
                      .merge(TextStyle(fontWeight: FontWeight.w700)),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  IconText(
                    iconData: Icons.calendar_today,
                    text: "Jan 10 2021",
                  ),
                  const SizedBox(width: 20),
                  IconText(
                    iconData: Icons.lock_clock,
                    text: "10 min read",
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData iconData;
  final String text;
  IconText({required this.iconData, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}
