import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  final String pic, head, date, readtime;
  NewWidget(
      {required this.pic,
      required this.head,
      required this.date,
      required this.readtime});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.only(top: 2, bottom: 2, right: 10, left: 14),
        child: Row(
          children: [
            Container(
                height: 80,
                width: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    pic,
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              width: 8,
            ),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.675,
                  child: Text(
                    head,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.brown[800],
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today_rounded,
                      color: Colors.brown[900],
                      size: 17,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      date,
                      style: TextStyle(color: Colors.brown[400], fontSize: 14),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Icon(
                      Icons.timer_sharp,
                      color: Colors.brown[900],
                      size: 17,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      readtime,
                      style: TextStyle(color: Colors.brown[400], fontSize: 14),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
