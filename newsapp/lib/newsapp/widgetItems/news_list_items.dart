import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/newsapp/values/values.dart';


// ignore: non_constant_identifier_names
Widget NewsListItems(){
  return
      const ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          child: Image(image: NetworkImage(newsImageUrl),height: 200,width: 100,),
        ),
        title: Text(newsTitle,maxLines: 2,style: TextStyle(fontSize: 15),),

      );
}