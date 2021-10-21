import 'package:flutter/material.dart';

class ListTiles extends StatelessWidget {
  const ListTiles({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.asset('assets/car.jpeg',
                              fit:BoxFit.cover
                              ),
                            )
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("This is a Car", style: Theme.of(context).primaryTextTheme.bodyText1),
                              Row(
                                children: [
                                  Icon(
                                    Icons.date_range,
                                    color:Colors.grey,
                                    ),
                                    Text("19 Oct 2021", style:TextStyle(color: Colors.grey)),
                                    SizedBox(width: 25),
                                  Icon(
                                    Icons.timelapse,
                                    color:Colors.grey,
                                    ),
                                    Text("19 mins ago", style:TextStyle(color: Colors.grey)),
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    );
  }
}