import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/portfolioimage.jpeg'),
            ),
                SizedBox(width: 85),
                Text(
                  'NEWS app',
                  style: GoogleFonts.merriweather(
                    backgroundColor: Colors.white,
                    textStyle:
                        const TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
                 SizedBox(width: 10),
                Text(
                  ' by Abhishek',
                  style: GoogleFonts.merriweatherSans(
                    backgroundColor: Colors.white,
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.redAccent),
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ],
    );
  }
}