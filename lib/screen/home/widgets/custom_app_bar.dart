import 'package:flutter/material.dart';
import 'package:news/screen/config/var/var.dart' as configvar;

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 27,
                backgroundImage: NetworkImage(configvar.profileImage),
              ),
              const SizedBox(width: 15),
              Text('12 Sept, 2021', style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
          Icon(Icons.search, size: 20)
        ],
      ),
    );
  }
}