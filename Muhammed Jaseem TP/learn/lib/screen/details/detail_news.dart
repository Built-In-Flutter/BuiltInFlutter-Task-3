



import 'package:flutter/material.dart';

import 'package:learn/screen/home/widgets/mainbar.dart';


class Detailsnews extends StatelessWidget {
   static const routeName='Detailnews';
   
 
   @override
   
   Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width;
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Color(0xFF222831),
         elevation: 0,
         actions: [Padding(
           padding: const EdgeInsets.all(10.0),
           child: Icon(Icons.share),
         ),
         ],
       ),
       body: SafeArea(
         child: SingleChildScrollView(
           child: Padding(
             padding:  const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff2e3033),
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Color(0xff393e46),
                  ),
                  child: Image.asset('fonts/news.jpg'),
                )),
                 const SizedBox(
              height: 10,
                 ),
                 Container(
              width: screenWidth * 0.8,
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'Apple to soon launch Legacy Contacts to share your data after you die.',
                style: TextStyle(
                  color: Color(0xFF222831),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SofiaBold',
                ),
              ),
                 ),
                 const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                          radius: 24,
                          backgroundColor: Color(0xFF222831),
                          backgroundImage: AssetImage('fonts/memo.png')),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Raju Bhai',
                        style: TextStyle(
                          color: Color(0xFF222831),
                          fontSize: 16,
                          fontFamily: 'SofiaMedium',
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Nov 23 2021',
                    style: TextStyle(
                      color: Color(0xFF222831),
                      fontSize: 16,
                      fontFamily: 'SofiaMedium',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Text('Apple rolled out its Legacy Contacts features to its developers test update for iOS 15 and iPadOS.With the feature, users can designate a contact (or multiple) as a Legacy Contact. In the event of the users passing, the designated Legacy Contacts can quickly request access to the deceaseds iCloud data.Apple has not specified when it will roll out the next update for iOS 15.Other platforms provide similar tools to allow friends or family members to access your accounts if a user dies. On Facebook, for example, users can appoint a legacy contact to look after a "memorialized" version of their account. Friends and family can also request deleting account for loved ones who have passed.On Twitter, friends and family can request the deletion of the account for a deceased loved one, but there are no options to gain access to the account after death.Apple to soon launch Legacy Contacts to share your data after you die',
              style: TextStyle(
                      color: Color(0xFF222831),
                      fontSize: 16,
                      fontFamily: 'SofiaMedium',
                    ),)

               ],
             ),
           ),
         )
       ),


     );
   }
 }