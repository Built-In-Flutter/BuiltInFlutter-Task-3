import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/config/var/var.dart' as configvar;
class Main_bar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        ClipRRect(
       borderRadius: BorderRadius.circular(14),
       child: Image.network(configvar.cricketImage),
      ),
       const SizedBox(height:10),
      
         Container(
          width: screenWidth*0.8,
        padding: const EdgeInsets.only(left:8.0),
          child: Text("World Test Champions New Zealand face trial by spin in search for first series win on Indian soil",style:Theme.of(context).primaryTextTheme.headline6,)),
       const SizedBox(height:15),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(
             children: [
                 CircleAvatar(
               radius: 24,
               backgroundImage: NetworkImage(configvar.profileImage)),
           const SizedBox(width: 8),
           Text('Jigar Mehta',
               style: Theme.of(context).textTheme.bodyText1),
             ],
           ),
          Text('24-11-2021',style: Theme.of(context).textTheme.bodyText1),
        ],
      ),
      ],
    );
  }
}
