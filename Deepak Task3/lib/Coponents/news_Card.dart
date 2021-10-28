// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  String title = "";
  String image = " ";
  String date = "";
  String time = "";

  NewsCard(this.title, this.image, this.date, this.time);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Container(height: 50, width: 100, child: Image.network(image)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 200,
                  child: Text(
                    title,
                    textAlign: TextAlign.start,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.calendar_today),
                      Text(date),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Row(
                    children: [
                      const Icon(Icons.lock_clock),
                      Text(time),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
