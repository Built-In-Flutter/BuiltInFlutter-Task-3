import 'package:flutter/material.dart';
import 'package:my_portfolio/news_screen.dart';
// import 'package:my_portfolio/portfolio_screen.dart';

void main() {
  runApp(
    PortfolioApp(),
  );
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        tabBarTheme: TabBarTheme(
          labelColor: Colors.black,
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
      ),
      title: "My Portfolio",
      home: NewsPage(),
    );
  }
}
