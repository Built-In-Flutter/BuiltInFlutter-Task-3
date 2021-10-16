import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:newsapp/main.dart';
class BottomTaskBar  extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
       height:58,
       width: MediaQuery.of(context).size.width *1,
       decoration: const BoxDecoration(
         
         //color: Colors.black38,
         //borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20) ),
         //boxShadow: [BoxShadow(color:Colors.black87,blurRadius: 1),]
         ),
      child: Row(children: [
        IconButton(onPressed: ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomePage())), 
        icon: Icon(Icons.home))
      ],) ,
    );
  }
}