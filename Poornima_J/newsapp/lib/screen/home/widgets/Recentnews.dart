import 'package:flutter/material.dart';

import 'NewsWidget.dart';

class Recentnews extends StatelessWidget {
  const Recentnews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView(
          children: [
            NewWidget(
                pic: "assets/pic3.jpeg",
                head: "Google Chrome 96 update is rolling out",
                date: "17 Nov, 2021",
                readtime: "2 min read"),
            NewWidget(
                pic: "assets/pic4.jpg",
                head: "Delhi: Pollution peaks as norms go up in smoke",
                date: "06 Nov, 2021",
                readtime: "5 min read"),
            NewWidget(
                pic: "assets/pic5.jpeg",
                head: "India resumes vaccine exports to 4 countries",
                date: "17 Nov, 2021",
                readtime: "8 min read"),
          ],
        ),
      ),
    );
  }
}
