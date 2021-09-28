import 'package:flutter/material.dart';
import '../../profile/profile.dart';
import '../../config/var/var.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 15, top: 5, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(Profile.routeName);
                  },
                  child: const CircleAvatar(
                    radius: 21,
                    backgroundImage: NetworkImage(profileImage),
                  ),
                ),
                const SizedBox(width: 10),
                Text('23 Sep, 2021',
                    style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
            const Icon(Icons.search, size: 30)
          ],
        ),
      ),
    );
  }
}
