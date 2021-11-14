import 'package:flutter/material.dart';
import 'package:news_app/screen/config/var/var.dart' as configvar;

class MainBar extends StatelessWidget {
  const MainBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            image: NetworkImage(configvar.coverImg),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: screenWidth * 0.8,
          child: Text(
            'This is my demo news page headline',
            style: Theme.of(context).primaryTextTheme.headline6,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(configvar.profileImg),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Natalia Poklowski",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "13 Nov 2021",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ],
    );
  }
}
