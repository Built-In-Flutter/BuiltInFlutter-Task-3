import 'package:ashiktasks/Portfolio.dart';
import 'package:flutter/material.dart';

class MainNews extends StatelessWidget {
  const MainNews({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/bike.jpg')),
        SizedBox(height: 15),
        Container(
          width: screenwidth * 0.8,
          child: Text("This is a Bike",
              style: Theme.of(context).primaryTextTheme.headline5),
          padding: EdgeInsets.only(left: 15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(Portfolio.routeName);
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/Profilepic.jpg'),
                ),
              ),
              SizedBox(width: 15),
              Text(
                "Ashik Jose",
                style: TextStyle(
                  color: Colors.black26,
                ),
              ),
            ]),
            Text("19 Oct,2021", style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      ],
    );
  }
}
