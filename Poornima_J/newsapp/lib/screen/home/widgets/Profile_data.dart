import 'package:flutter/material.dart';

class ProfileData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.9,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('assets/profilepic.jpeg'),
          ),
          Container(
            child: Text(
              'Poornima J',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Open Sans'),
            ),
            margin: EdgeInsets.all(10),
          ),
          Container(
            child: Text(
              'Web App Developer | Coding Enthusiast',
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  fontFamily: 'Source Sans Pro',
                  letterSpacing: 2.5),
            ),
            margin: EdgeInsets.only(bottom: 10),
          ),
          Divider(
            height: 20,
            thickness: 5,
            indent: 30,
            color: Colors.brown,
          ),
          Expanded(
            child: ListView(
              children: [
                DetailsType1(
                  icon: Icons.email_rounded,
                  head: "About me ",
                  content:
                      "I am presently persuing Btech in computer science engineering from NSS College Of Engineering,Palakkad. I am into web development. I am a python programmer. My motto is that learning should never stop.",
                ),
                DetailsType1(
                    icon: Icons.house_rounded,
                    head: "Address",
                    content:
                        "Guru,Elanthiancode,Kunnathurmedu,Palakkad - 678013"),
                DetailsType2(
                  icon: Icons.email_rounded,
                  head: "Email ",
                  content: "poornijaidip@gmail.com ",
                ),
                DetailsType2(
                  icon: Icons.phone_iphone_rounded,
                  head: "Mobile ",
                  content: "9526671*** ",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DetailsType2 extends StatelessWidget {
  final IconData icon;
  final String head, content;
  DetailsType2({required this.icon, required this.head, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.brown[100],
      child: Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.brown,
              size: 25.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Text(
                head,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 5),
              child: Text(
                ":- ",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 5),
              child: Text(
                content,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsType1 extends StatelessWidget {
  final IconData icon;
  final String head, content;
  DetailsType1({required this.icon, required this.head, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.brown[100],
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.brown,
                  size: 25.0,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    head,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    ":- ",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              content,
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
