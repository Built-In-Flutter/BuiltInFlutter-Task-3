import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 55,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
        Padding(
          padding: EdgeInsets.all(12),
          child: Text('          Top news',style: TextStyle(fontSize: 20,),),
        ),
         Padding(
          padding: EdgeInsets.all(12),
          child: Text('                              All',style: TextStyle(fontSize: 20,)),
        ),
       
      ],),
    );
  }
}