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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Image.asset(
                "assets/icons/drawerIcon.png",
                height: 200,
                width: 200,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "WELCOME",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Emilia Bubu",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 70,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/user.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(),
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
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30,left: 30),
            child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                GestureDetector(
                  onTap: (){},
                  child: Text("Popular",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Text("Trending",style: TextStyle(
                    fontSize: 25,
                    fontWeight: null,
                  ),),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Text("Recent",style: TextStyle(
                    fontSize: 25,
                    fontWeight: null,
                  ),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
