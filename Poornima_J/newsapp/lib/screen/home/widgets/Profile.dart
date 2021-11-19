import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/widgets/Profile_data.dart';

class Profile extends StatelessWidget {
  static const routename = "Profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
            letterSpacing: 4,
            wordSpacing: 8,
            fontFamily: 'Open Sans',
          ),
        ),
        backgroundColor: Colors.brown[900],
        elevation: 10,
        // leading: Icon(
        //   Icons.person_rounded,
        //   color: Colors.white,
        //   size: 40.0,
        // ),
        // actions: [
        //   Icon(
        //     Icons.,
        //     color: Colors.white,
        //     size: 40.0,
        //   ),
        // ],
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: ProfileData(),
      ),
    );
  }
}
