import 'package:flutter/material.dart';
import 'package:newapp/screen/config/var/var.dart' as configimg;

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
                width: screenwidth * 0.6,
                child: Text(
                  'WorldWar III begins; water crisis across globe',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.orangeAccent),
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
                        Icons.calendar_view_day,
                        size: 18,
                        color: Colors.deepPurpleAccent,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '18th Nov, 2021',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_alarm,
                        size: 18,
                        color: Colors.deepPurpleAccent,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'just now',
                        style: TextStyle(color: Colors.white),
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