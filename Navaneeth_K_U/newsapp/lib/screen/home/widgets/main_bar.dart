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
          child: Image.asset('assets/nanopolymer.jpg'),
        ),
        const SizedBox(height: 10),
        Container(
            child: Text(
              '3D Nano-inks Push Industry Boundaries',
              style: Theme.of(context).primaryTextTheme.headline5,
            )),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Image.asset('assets/profile.jpg'),
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
                  'Navaneeth K U',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Text(
              '07 Oct, 2021',
              style: Theme.of(context).textTheme.bodyText1,),
          ],
        ),
      ],
    );
  }
}
