import 'package:flutter/material.dart';
import 'package:portfolio/portfolio.dart';

class Mainbar extends StatelessWidget {
  const Mainbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.asset('assets/tesla.jpg'),
        ),
        const SizedBox(height: 10),
        Container(
            child: Text(
          'Health and Safety at Tesla new updates',
          style: Theme.of(context).primaryTextTheme.headline5,
        )),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Image.asset('assets/rdj.jpg'),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  },
                ),
                const SizedBox(width: 10),
                Text(
                  'Paliyath S. Aju',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Text(
              '17 Oct, 2021',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ],
    );
  }
}
