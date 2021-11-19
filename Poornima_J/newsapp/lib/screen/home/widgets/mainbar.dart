import 'package:flutter/material.dart';

class mainbar extends StatelessWidget {
  const mainbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          child: Image.asset(
            "assets/pic2.jpg",
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.only(left: 5, right: 5),
          width: MediaQuery.of(context).size.width * 0.9,
          child: Text(
            "Microsoft has made it tougher to use Chrome or other browsers in Windows 11",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.brown[900],
                fontFamily: 'Source Sans Pro',
                letterSpacing: 2,
                wordSpacing: 2),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.85,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('assets/pic1.jpg'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "TimesOfIndia",
                    style: TextStyle(color: Colors.brown[400], fontSize: 13),
                  ),
                ],
              ),
              Text(
                "16 Nov, 2021",
                style: TextStyle(color: Colors.brown[400], fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
