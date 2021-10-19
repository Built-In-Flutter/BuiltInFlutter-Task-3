import 'package:flutter/material.dart';

class customtile extends StatelessWidget {
  const customtile({
    Key? key,
    required this.screenwidth,
  }) : super(key: key);

  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/cover.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenwidth * .7,
                child: Text(
                  'This is Ford offroad truck Imported from germany ',
                  style: Theme.of(context).primaryTextTheme.bodyText1!.merge(
                        const TextStyle(fontWeight: FontWeight.w700),
                      ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    icontext(
                      iconData: Icons.calendar_today,
                      title: 'oct 12 , 2021',
                    ),
                    SizedBox(width: 20),
                    icontext(
                      iconData: Icons.lock_clock,
                      title: '10 min Read',
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class icontext extends StatelessWidget {
  final IconData iconData;
  final String title;
  icontext({required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 10,
        ),
        SizedBox(
          width: 5,
        ),
        Text(title, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
