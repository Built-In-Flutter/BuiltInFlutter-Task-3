import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/widgets/Profile.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          right: 10,
          left: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(Profile.routename);
              },
              child: Icon(
                Icons.person_rounded,
                color: Colors.white,
                size: 40.0,
              ),
            ),
            Text(
              "FLASH NEWS",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Source Sans Pro',
                  letterSpacing: 3,
                  fontSize: 30,
                  wordSpacing: 2),
            ),
            Icon(
              Icons.search,
              size: 40,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
