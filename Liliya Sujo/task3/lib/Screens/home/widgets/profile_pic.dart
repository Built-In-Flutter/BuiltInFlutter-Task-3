import 'package:flutter/material.dart';
import 'package:task3/Screens/config/var/var.dart' as configvar;

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(configvar.profileImage),
                ),
                const SizedBox(width: 10),
                Text(
                  '23 sep, 2021',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Icon(Icons.search, size: 30)
          ],
        ),
      ],
    );
  }
}