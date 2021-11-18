import 'package:firstapp/screens/detailed_news.dart';
import 'package:firstapp/screens/profile_ui.dart';

import 'screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
      routes: {
        DetailedNews.routeName: (ctx) => DetailedNews(),
      },
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
    );
  }
}
