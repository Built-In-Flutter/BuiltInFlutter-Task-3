import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          color: Colors.blue[50],
          child: Column(children:const [
           
            Padding(             
              padding: EdgeInsets.only(top: 15),                         
              ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/portfolioimage.jpeg"),
              radius: 70,
            ),
            Text('Abhishek krishnan U V',textScaleFactor: 2,style: TextStyle(fontFamily: 'Poppins'),),
            Text('Flutter Developer'),

            ListTile(
              title: Text('   1500 followers                1700 following   ',style: TextStyle(fontSize: 20,)),
              
              tileColor: Colors.white,
              
              ),       


            Padding(padding:EdgeInsets.only(top: 25)),
              ListTile(
              title: Text('Email'),
              tileColor: Colors.white,
              subtitle: Text('abhishek@example.com'),
              leading:Icon(FontAwesomeIcons.mailBulk),             
              ),  
              Divider(
              height: 4,
              thickness: 2,
              color: Colors.black12,
              indent: 20,
              endIndent: 20,
              ),              
              ListTile(
              title: Text('Mobile'),
              tileColor: Colors.white,
              subtitle: Text('0000000000'),
              leading:Icon(FontAwesomeIcons.mobile),
              ), 
              Divider(
              height: 4,
              thickness: 2,
              color: Colors.black12,
              indent: 20,
              endIndent: 20,
              ),             
              ListTile(
              title: Text('Facebook'),
              tileColor: Colors.white,
              subtitle: Text('www.facebook/abhishek'),
              leading:Icon(FontAwesomeIcons.facebook),
              ),
              Divider(
              height: 4,
              thickness: 2,
              color: Colors.black12,
              indent: 20,
              endIndent: 20,
              ),             
               ListTile(
              title: Text('Twitter'),
              tileColor: Colors.white,
              subtitle: Text('www.twitter/abhishek'),
              leading:Icon(FontAwesomeIcons.twitter),
              ), 
              Divider(
              height: 4,
              thickness: 2,
              color: Colors.black12,
              indent: 20,
              endIndent: 20,
              ),             
                           
          ]                          
          ),
        ),
      ),
    );
  }
}