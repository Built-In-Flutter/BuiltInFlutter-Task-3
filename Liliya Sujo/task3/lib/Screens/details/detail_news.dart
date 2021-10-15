import 'package:flutter/material.dart';
import 'package:task3/Screens/home/widgets/main_bar.dart';

class DetailNews extends StatelessWidget {
  static const routename = 'DetailNews';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainBar(),
              const SizedBox(height: 10),
              Text(
                  'Cars are automobiles that can transport people. It is the main means of travelling for hundreds of millions of people all over the world. Cars have changed the way we live probably more than any other invention in history. At first only a few people had cars but after a while more and more people bought them because they improved the way people lived. Farmers with cars were able to bring their products to places that were farther away. The appearance of cities and towns also changed. More and more workers drove to their jobs and people started to move to suburbs outside the town centers. Automobiles give people many jobs. Millions of people around the world work in factories where cars are produced. Millions more work at gas stations, restaurants or motels that travelers stop at. However, cars also cause problems. Millions of people die in car accidents every year. Automobiles pollute the air that we breathe and parking space in cities is scarce because everyone wants to use their cars to get to city centers. ')
            ],
          ),
        ),
      )),
    );
  }
}
