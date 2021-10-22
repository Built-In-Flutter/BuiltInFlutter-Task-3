import 'package:flutter/material.dart';
import 'package:newsapp_ui_by_abhishek/Screens/config/var/var.dart' as configvar;

class CustomTile extends StatelessWidget {
  const CustomTile({
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
                  'Canon sued for 5 million dollars for disabling scanner when printers run out of ink',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .merge(
                          const TextStyle(fontWeight: FontWeight.w900,)),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                
                ],
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

  // ignore: use_key_in_widget_constructors
  const IconText({required this.iconData, required this.title});

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