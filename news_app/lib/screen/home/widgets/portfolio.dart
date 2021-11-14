import 'package:flutter/material.dart';
import 'package:news_app/mobile_portfolio_app/lib/containerWidgets.dart';

class PortfolioApp extends StatelessWidget {
  static const routeName = 'PortfolioApp';

  const PortfolioApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mobile Portfolio App",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Portfolio",
            style: TextStyle(
              color: Colors.indigo[900],
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.yellowAccent[400],
          elevation: 10,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_rounded),
            color: Colors.indigo[900],
          ),
        ),
        body: Layout(),
        backgroundColor: Colors.white,
      ),
    );
  }
}
