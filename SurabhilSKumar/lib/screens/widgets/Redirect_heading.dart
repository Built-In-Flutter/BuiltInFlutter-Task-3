import 'package:firstapp/screens/config/images/news_img.dart';
import 'package:flutter/material.dart';

class HeadingRe extends StatelessWidget {
  const HeadingRe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(image: NetworkImage(news1)),
        ),
        Container(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                width: screenWidth * 0.9,
                child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
              ),
      ],
    );
  }
}