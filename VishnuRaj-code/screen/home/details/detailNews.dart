import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/widget/mainbar.dart';

class DetailNews extends StatelessWidget {
  static const routeName = 'DetailName';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.share,
              color: Colors.black,
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Main_bar(),
              const SizedBox(height: 15),
              Text(
              "The familiar foes meet again.It's only six months ago that the first cycle of the World Test Championship ended with New Zealand lifting the title. India's perennial nemesis in ICC tournaments, New Zealand, edged them in a tense final in Southampton. They got their team selection right, they utliised the conditions better than India and executed their plans with patience and perfection.It was a similar case five months later in the 2021 T20 World Cup where they outclassed India in a crunch match in Dubai. They reached the final but again couldn't get the final push to lift the trophy.And three days later, the knackered Kiwis met India again in the three-match T20I series. This time the tables had been turned as India overpowered them to achieve a 3-0 clean sweep.", style: Theme.of(context).textTheme.bodyText2 )
            ],
          ),
        ),
      )),
    );
  }
}
