import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/profile_page/profile_page.dart';
import 'package:newsapp/sections/news_section.dart';
import 'package:newsapp/sections/tab_section.dart';
import 'package:newsapp/sections/category_section.dart';
import 'package:newsapp/widgets/custom_newstile.dart';

import 'text_resources.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget divider() {
      return const Divider(
        indent: 8,
        endIndent: 8,
        thickness: 1,
        color: Colors.grey,
      );
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 232, 232, 40),
      appBar: AppBar(
        title: Text("Tink NEWS",
            style: GoogleFonts.lobsterTwo(fontSize: 25, color: Colors.black87)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const CircleAvatar(
            backgroundImage: AssetImage(
              "assets/Asif.jpg",
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile_Page()),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          divider(),
          CategerySection(),
          divider(),
          SizedBox(
            height: 10,
          ),
          NewsSection()
        ],
      ),
    );
  }
}
