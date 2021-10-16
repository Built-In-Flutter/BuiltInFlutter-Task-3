
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newsapp/newsapp/values/values.dart';


// ignore: use_key_in_widget_constructors
class NewsDisplay  extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return 
      // ignore: prefer_const_literals_to_create_immutables
       Container(
         width: MediaQuery.of(context).size.width*0.85,
        // height: MediaQuery.of(context).size.height*0.1,
        //  decoration:  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
        child:Stack(children: [
          ClipRRect(borderRadius: 
        BorderRadius.all(Radius.circular(20),), 
        child:Image(image: NetworkImage(newsImageUrl),) ,
       ),
       Padding(
         padding: const EdgeInsets.only(top: 110,left: 20),
         child: Text(newsTitle,style: 
         TextStyle(
           fontSize: 20,
           color: Colors.white,fontWeight: FontWeight.w400),),
       )
        ],) )
    ;
  }
}