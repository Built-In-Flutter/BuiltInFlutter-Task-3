import 'package:firstapp/screens/home_page.dart';
import 'package:flutter/material.dart';

import 'widgets/profile_data.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Portfolio App',
            style: TextStyle(
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
              fontFamily: 'NunitoRegular',
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black38,
          elevation: 0.0,
        ),
        body: ProfileMe(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomePage();
            }));
          },
          child: Text('News'),
          backgroundColor: Colors.indigoAccent,
        ),
      ),
    );
  }
}
