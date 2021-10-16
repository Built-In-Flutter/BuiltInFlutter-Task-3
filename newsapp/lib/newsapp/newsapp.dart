import 'package:flutter/material.dart';
import 'package:newsapp/newsapp/widgetItems/newsapplogo.dart';
import 'package:newsapp/newsapp/widgets/bottom_tak_bar.dart';

import 'package:newsapp/newsapp/widgets/category_selection.dart';
import 'package:newsapp/newsapp/widgets/news_display.dart';
import 'package:newsapp/newsapp/widgets/news_list.dart';


class  NewsApp extends StatelessWidget {
   
  final List<String> buttonNames=['All news','Business','Politics', 'Tech','Science'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: 
           SafeArea(
             child: Column(
               
               crossAxisAlignment: CrossAxisAlignment.start,
               children:  [
               Padding(
                 padding: const EdgeInsets.all(20),
                 child: newsLogo(),
               ),
                CategorySelection(buttonNames: buttonNames),

                Padding(
                  padding: const EdgeInsets.all(30),
                  child: NewsDisplay(),
                ),
              const Padding(
                padding:  EdgeInsets.only(left: 30),
                child: Text("Latest News",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: NewsList(),
              ),

              BottomTaskBar(),
              ],),
           ),
        ) ,
      
    );
  }
}