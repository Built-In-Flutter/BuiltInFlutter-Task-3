import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  static const routName1 = 'Profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shalim',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black54,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(child: ProfilePage()),
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My profile'),
        shadowColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {},
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: Container(
        height: 700,
        width: double.infinity,
        padding: EdgeInsets.all(25),
        //color: Colors.black26,
        child: Column(
          children: [
            Align(
              child: Text('MUHAMMAD SHALIM T',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ))),
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              //backgroundColor: Colors.brown.shade800,
              backgroundImage: AssetImage('assets/pic.jpg'),
              radius: 100,
            ),
            Spacer(),
            Row(
              children: [
                Text('Email',
                    style: GoogleFonts.teko(
                        textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ))),
                Spacer(),
                Text('Shalimshali46@gmail.com',
                    style: GoogleFonts.teko(
                        textStyle: TextStyle(
                      fontSize: 20,
                    ))),
              ],
            ),
            Spacer(),
            Divider(
              color: Colors.black12,
              thickness: 1,
            ),
            Spacer(),
            Row(
              children: [
                Text('Phone',
                    style: GoogleFonts.teko(
                        textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ))),
                Spacer(),
                Text('+91 9048371387',
                    style: GoogleFonts.teko(
                        textStyle: TextStyle(
                      fontSize: 20,
                    ))),
              ],
            ),
            Spacer(),
            Divider(
              color: Colors.black12,
              thickness: 1,
            ),
            Spacer(),
            Row(
              children: [
                Text('DOB',
                    style: GoogleFonts.teko(
                        textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ))),
                Spacer(),
                Text('22-Jul-2002',
                    style: GoogleFonts.teko(
                        textStyle: TextStyle(
                      fontSize: 20,
                    ))),
              ],
            ),
            Spacer(),
            Divider(
              color: Colors.black12,
              thickness: 1,
            ),
            Spacer(),
            Row(
              children: [
                Text('Twitter',
                    style: GoogleFonts.teko(
                        textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ))),
                Spacer(),
                Text('@Shalimshali',
                    style: GoogleFonts.teko(
                        textStyle: TextStyle(
                      fontSize: 20,
                    ))),
              ],
            ),
            Spacer(),
            Divider(
              color: Colors.black12,
              thickness: 1,
            ),
            Spacer(),
            Row(
              children: [
                Text('Adress',
                    style: GoogleFonts.teko(
                        textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ))),
                Spacer(),
                Text('Calicut,kerala,India,673614',
                    style: GoogleFonts.teko(
                        textStyle: TextStyle(
                      fontSize: 20,
                    ))),
              ],
            ),
            Spacer(),
            Divider(
              color: Colors.black12,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
