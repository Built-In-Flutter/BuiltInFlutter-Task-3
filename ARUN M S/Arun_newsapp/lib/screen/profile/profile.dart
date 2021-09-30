import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  static const routName1 = 'ProfleDetails';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Personal Profile : ARUN M S',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
        ),
        body: Center(
          child: SingleChildScrollView(child: ProfileView()),
        ));
  }
}

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: Column(children: [
        Align(
          child: Text(
            "PROFILE",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          alignment: Alignment.topCenter,
        ),
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 80,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/arun.jpg'),
            radius: 75,
          ),
        ),
        SizedBox(height: 20),
        Text('ARUN M S',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            )),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Text('Mobile Number : ',
                style: TextStyle(fontSize: 20, color: Colors.black)),
            Spacer(),
            Text('9946303421',
                style: TextStyle(fontSize: 20, color: Colors.black)),
          ],
        ),
        Divider(
          color: Colors.grey,
          thickness: 2,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text('Email : ',
                style: TextStyle(fontSize: 20, color: Colors.black)),
            Spacer(),
            Text('arun00ms00@gmail.com',
                style: TextStyle(fontSize: 20, color: Colors.black)),
          ],
        ),
        Divider(
          color: Colors.grey,
          thickness: 2,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text('Date of Birth : ',
                style: TextStyle(fontSize: 20, color: Colors.black)),
            Spacer(),
            Text('08/08/1999',
                style: TextStyle(fontSize: 20, color: Colors.black)),
          ],
        ),
        Divider(
          color: Colors.grey,
          thickness: 2,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text('Address : ',
                style: TextStyle(fontSize: 20, color: Colors.black)),
            Spacer(),
            Text('Moothedath House',
                style: TextStyle(fontSize: 20, color: Colors.black)),
          ],
        ),
        Divider(
          color: Colors.grey,
          thickness: 2,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text('Education : ',
                style: TextStyle(fontSize: 20, color: Colors.black)),
            Spacer(),
            Text('B.Tech', style: TextStyle(fontSize: 20, color: Colors.black)),
          ],
        ),
        Divider(
          color: Colors.grey,
          thickness: 2,
        ),
      ]),
    );
  }
}
