import 'package:flutter/material.dart';
import 'package:news_app/screen/config/var/var.dart' as configimg;

class CustomTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(right: 15, left: 15),
      child: Row(
        children: [
          Container(
              height: 60,
              width: 80,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    configimg.mainImg,
                    fit: BoxFit.cover,
                  ))),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenwidth * 0.5,
                child: Text(
                  'Faster than ever',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '05 Oct 2021',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '10 min Read',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
