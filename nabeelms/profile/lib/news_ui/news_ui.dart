import 'package:flutter/material.dart';

class NewsUi extends StatefulWidget {
  const NewsUi({
    Key? key,
  }) : super(key: key);

  @override
  State<NewsUi> createState() => _NewsUiState();
}

class _NewsUiState extends State<NewsUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading:  Builder(
            builder: (context) => IconButton(
              icon: Image.asset(
                "assets/icons/drawerIcon.png",
                height: 200,
                width: 200,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(

              ),
            ),
          ),
          actions: [

            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("user.jpg")
                ),
              ),
            ),
            Container(

            )
          ],

        ),
        drawer: Drawer(

        ),

        body: NewsHome(),
      ),
    );
  }
}

class NewsHome extends StatelessWidget {
  const NewsHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
