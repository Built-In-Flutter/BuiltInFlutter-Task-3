import 'package:flutter/material.dart';

import 'cards.dart';

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
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Popular",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Trending",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: null,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Recent",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: null,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 350,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    NewsHorizontalCards(
                      horizontalCardNews: "Morphosis Completes First Phase Of High-Speed Rail Station In Vigo, Spain",
                      horizontalCardImage: "https://worldarchitecture.org/cdnimgfiles/extuploadc/vig_aerial.jpg",
                      horizontalCardPostTime: "1",
                      horizontalCardReadTime: "3",
                      newsType: "Architecture",
                    ),
                    NewsHorizontalCards(
                      horizontalCardNews: "Kazoo Sato Adds Touchless Public Toilet To Tokyo's Shibuya Financial District",
                      horizontalCardImage: "https://worldarchitecture.org/cdnimgfiles/extuploadc/_o0a5257_1.jpg",
                      horizontalCardPostTime: "2",
                      horizontalCardReadTime: "3",
                      newsType: "Architecture",
                    ),
                    NewsHorizontalCards(
                      horizontalCardNews: "Apple App Store Payment Rules Anti-Competitive, Dutch Watchdog Said to Have Found",
                      horizontalCardImage: "https://i.gadgets360cdn.com/large/apple_store_reuters_1628067785885.jpg",
                      horizontalCardPostTime: "2",
                      horizontalCardReadTime: "3",
                      newsType: "Architecture",
                    ),


                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              width: MediaQuery.of(context).size.width,
              child: Text(
                "BASED ON YOUR READING HISTORY",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),

            NewsVerticalCards(
              verticalCardImage: "https://img.etimg.com/thumb/msid-86759696,width-160,height-120,imgsize-,quality-100/.jpg",
              verticalCardNews: "WhatsApp, Facebook, Instagram recover after almost six-hour outage",
              verticalCardNewsDetails:"The three Facebook-owned platforms were down in many parts of the world, users reported on Monday night. On Twitter, people posted messages saying these platforms were inaccessible from around 9 pm IST. Around 400 million people use one or more of these platforms in India." ,
              verticalCardPostTime:"1" ,
              verticalCardReadTime: "5",
            ),
            NewsVerticalCards(
              verticalCardImage: "https://media.istockphoto.com/photos/young-woman-touching-experiencing-vr-helmet-picture-id1124742848?k=20&m=1124742848&s=612x612&w=0&h=M9dHT2kP2BItsyPtnCgYIo55N_3QAYPTftMz2i_JMac=",
              verticalCardNews: "Facebook's outage also hit its AR and VR gadgets, making them temporarily half-blind",
              verticalCardNewsDetails:"Midway through Facebook's full-day outage on Tuesday, I realized I needed to try getting into VR. I saw a few joke tweets suggesting people were trapped in the metaverse, and I thought to myself... what happens to an Oculus Quest when Facebook is down? Would" ,
              verticalCardPostTime:"1" ,
              verticalCardReadTime: "5",
            ),
          ],
        ),
      ),
    );
  }
}




class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 5.0,
      width: 5.0,
      decoration: new BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
