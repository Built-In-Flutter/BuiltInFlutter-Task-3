import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main_bar.dart';

class TitleBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [

          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.fromLTRB(8.0,0,0,0),
            child: Text('Breaking News',style: TextStyle(fontSize: 36,color: Color.fromRGBO(0, 0, 160, 1),shadows: [
              Shadow(
              blurRadius: 6.0,
              color: Colors.black45,
              offset: Offset(1.0, 1.0),
            ),]),),
          ),
          SizedBox(height: 5),
          MainBar(),
          //SizedBox(height: 10),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Row(
          //       children: [
          //         CircleAvatar(
          //           radius: 24,
          //           backgroundImage: NetworkImage(profileImage),
          //         ),
          //         const SizedBox(width: 10),
          //         Text('Sample Text')
          //       ],
          //     ),
          //     const SizedBox(width: 10),
          //     Text('13 oct 2021'),
          //   ],
          // )
        ],
      ),
    );
  }
}

