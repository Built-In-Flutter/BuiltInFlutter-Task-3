import 'package:flutter/material.dart';
import 'package:newsapp/Coponents/Custome_AppBar.dart';
import 'package:newsapp/Coponents/news_Card.dart';
import 'package:newsapp/Screens/NewsDescriptionPage.dart';

import 'Models/NewsModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomeAppBar(),
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Breaking News",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                NewsDescriptionPage(BreakingNewsList[0])));
                  },
                  child: Container(
                    height: 350,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 220,
                                width: 340,
                                child: Image.network(BreakingNewsList[0].image,
                                    height: 240, width: 320, fit: BoxFit.cover),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            BreakingNewsList[0].title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: const CircleAvatar(
                                      radius: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text("John Smith"),
                                ],
                              ),
                              Text(BreakingNewsList[0].Date)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("All"),
                    Text("Information"),
                    Text("Media"),
                    Text("Magazine"),
                    Text("Bussiness")
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return NewsCard(list[index].title, list[index].image,
                            list[index].Date, list[index].time);
                      }),
                )
              ],
            ),
          ),
        ));
  }
}

List<NewsModel> list = [
  NewsModel(
      "An Illinous town fights to save its power plant ",
      " ",
      "Jul 10,2021",
      "10:30 Am",
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP_mAMmn0CMG8WGoOX4t0nrluzr3jnZ2E1wyfGK2KWJv6nmD0sAQpHFv43RgtSJruPXxk&usqp=CAU'),
  NewsModel(
      "14 Passengers Banned By Nona Airlines After bad Behavior",
      " ",
      "Jul 10,2021",
      "10:30 Am",
      'https://wallup.net/wp-content/uploads/2019/09/495206-lockheed-l-1011-tristar-airliner-airplane-plane-transport-aircrafts.jpg'),
  NewsModel(
      " An Illinous town fights to save its power plant ",
      " ",
      "Jul 10,2021",
      "10:30 Am",
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP_mAMmn0CMG8WGoOX4t0nrluzr3jnZ2E1wyfGK2KWJv6nmD0sAQpHFv43RgtSJruPXxk&usqp=CAU')
];

List<NewsModel> BreakingNewsList = [
  NewsModel(
      "Contact Lost With SriWijaya Air Boing 7373-500 After Take Off ",
      "A plane crashed at takeoff on Tuesday in Texas, with all 21 passengers and crew on board scrambling to safety before the aircraft burst into flames.Television images showed fire fighters spraying water onto the burning remains of the plane, which came to a halt across a track in a field, surrounded by trees and bushes.The fuselage was reduced to ashes, with only the tail section surviving as black smoke poured from the wreckage.Fortunately all 21 passengers including three crew members were reported as safely evacuated from this twin-engine jet before it was fully engulfed in flames, the Katy Fire Department said in a statement.The McDonnell Douglas MD-87 plane was taking off from Houston Executive Airport, Brookshire, bound for Boston when it crashed, officials said.Local reports said it was taking fans to watch a play-off baseball game between the Houston Astros and the Boston Red Sox on Tuesday evening.",
      "Jul 10,2021",
      "10:30 Am",
      'https://images.unsplash.com/photo-1515526996020-12f6c0a386d0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGxhbmUlMjBjcmFzaHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'),
];
