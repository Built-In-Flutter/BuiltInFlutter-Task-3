// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:learn/screen/details/detail_news.dart';

import 'screen/home/homepage.dart';
import 'screen/details/detail_news.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
       
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        Detailsnews.routeName:(ctx)=>Detailsnews(),
      },
      home: Homepage(),
    );
  }
}



