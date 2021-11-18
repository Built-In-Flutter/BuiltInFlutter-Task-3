import 'package:firstapp/screens/config/images/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(dp),
        ),
        SizedBox(
          width: 7.0,
        ),
        Text(
          '17 Nov, 2021',
          style: TextStyle(color: Colors.grey.shade600),
        ),
      ],
    );
  }
}