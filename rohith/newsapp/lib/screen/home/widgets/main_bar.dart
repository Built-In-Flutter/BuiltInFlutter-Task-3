import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:newsapp/screen/config/var/var.dart';

class MainBar extends StatelessWidget {
  const MainBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      child: ListView(
          scrollDirection: Axis.horizontal,
        children: [
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.network(dravid),
              ),
              Container(
                width: screenWidth * 0.8,
                  child: const Text('Rahul Dravid likely to be interim coach for New Zealand series',style: TextStyle(fontSize: 18,color: Colors.white,shadows: [
                    Shadow(
                      blurRadius: 6.0,
                      color: Colors.black,
                      offset: Offset(1.0, 1.0),
                    ),
                  ],))),
            ],
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(dravid),
                ),
                Container(
                    width: screenWidth * 0.8,
                    child: const Text('Rahul Dravid likely to be interim coach for New Zealand series',style: TextStyle(fontSize: 18,color: Colors.white,shadows: [
                      Shadow(
                        blurRadius: 6.0,
                        color: Colors.black,
                        offset: Offset(1.0, 1.0),
                      ),
                    ],))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(oneplus),
                ),
                Container(
                    width: screenWidth * 0.8,
                    child: const Text('Did Mars Ever Look Like Earth? NASA Scientist Answers - Gadgets 360',style: TextStyle(fontSize: 18,color: Colors.white,shadows: [
                      Shadow(
                        blurRadius: 6.0,
                        color: Colors.black,
                        offset: Offset(1.0, 1.0),
                      ),
                    ],))),
              ],
            ),
          ),
      ]
      ),
    );
  }
}
