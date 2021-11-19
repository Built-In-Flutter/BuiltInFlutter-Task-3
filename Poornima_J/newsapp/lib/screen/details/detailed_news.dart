import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/widgets/mainbar.dart';

class DetailedNews extends StatelessWidget {
  static const routename = "DetailedNews";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 50),
            child: Icon(
              Icons.share,
              size: 30,
            ),
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
          child: Column(
            children: [
              mainbar(),
              SizedBox(
                height: 10,
              ),
              Text(
                "Microsoft seems to have made up its mind that it wants users to use its Edge web browser on Windows 11.The company made a slew of changes to this effect on the latest version of its operating system. With the launch of Windows 11, Microsoft changed the way users assign default apps. On the new operating system, users have to set default apps according to the type of file or link type instead of a single switch. This means that for changing the default browser, users have to change the default file type for FTP, HTTPS, HTTP, HTML, HTM, PDF, SHTML, SVG, WEBP, XHT and XHTML.",
                style: TextStyle(
                    fontSize: 15, wordSpacing: 2, color: Colors.brown[800]),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
