import 'package:flutter/material.dart';

class Category_List extends StatelessWidget {
  const Category_List({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('All'),
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('sports',
             style:TextStyle(decoration:TextDecoration.underline,decorationThickness:1,)),
             ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('global'),
          ),
            
        ],
      ),
    );
  }
}

