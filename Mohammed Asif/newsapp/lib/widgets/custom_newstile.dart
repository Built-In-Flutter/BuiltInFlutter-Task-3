import 'package:flutter/material.dart';

class CustomNewsTile extends StatelessWidget {
  String imageUrl;
  String headline;
  String date;
  String time;

  CustomNewsTile(
      {required this.imageUrl,
      required this.headline,
      required this.date,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        minLeadingWidth: 100,
        leading: Image.network(
          imageUrl,
        ),
        title: Text(
          headline,
          style: TextStyle(fontSize: 15),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Row(
                children: [
                  const Icon(
                    Icons.calendar_today,
                    size: 10,
                  ),
                  Text(
                    date,
                    style: const TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  const Icon(
                    Icons.timer,
                    size: 12,
                  ),
                  Text(
                    time,
                    style: const TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
