import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/screen/config/var/var.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
  color: Colors.black12,
      height: 35,
      child: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 8, 8, 8),
              child: Container(
                alignment: Alignment.center,
                width: 30,
                color: Colors.black,
                child: Text('All',style: TextStyle(color: Colors.white),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Sports'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Global'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Health'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Education'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Regional'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Tech'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Crime'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Money'),
            ),
          ],
        ),
      ),
    );
  }
}

