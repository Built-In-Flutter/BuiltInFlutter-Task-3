import 'package:flutter/material.dart';
import 'containerWidgets.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PortfolioApp();
  }
}

class PortfolioApp extends StatelessWidget {
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
            onPressed: () {},
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
