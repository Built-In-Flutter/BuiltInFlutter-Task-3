import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_portfolio/single_news_card.dart';
import 'package:my_portfolio/portfolio_screen.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int _current = 0;
  List data = [
    {
      "time": 10,
      "heading": "Rahul Gandhi's #IStandWithFarmers Message On Bharat Bandh",
      "imageSrc":
          "https://c.ndtvimg.com/2021-08/040f1gqo_rahul-gandhi_625x300_04_August_21.png"
    },
    {
      "time": 20,
      "heading": "How to set up Google Pay on your Samsung Galaxy Watch 4",
      "imageSrc":
          "https://www.androidcentral.com/sites/androidcentral.com/files/styles/large/public/article_images/2021/09/google-pay-galaxy-watch-4-closeup.jpg"
    },
    {
      "time": 30,
      "heading":
          "These are the 10 most talked about stocks on Reddit's Wall Street Bets",
      "imageSrc":
          "https://images2.markets.businessinsider.com/60d089933093db00197022fc?format=jpeg"
    },
    {
      "time": 40,
      "heading": "TikTok reached 1 billion monthly active users",
      "imageSrc":
          "https://techcrunch.com/wp-content/uploads/2021/09/1a5f35e3d3e6dd7f2899f7197a0f86e8.png?w=764"
    },
    {
      "time": 50,
      "heading":
          "Boston Fed Leader Rosengren Announces Early Retirement Amid Trading Controversy - The Wall Street Journal",
      "imageSrc":
          "https://c.ndtvimg.com/2021-08/040f1gqo_rahul-gandhi_625x300_04_August_21.png"
    },
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Instant News",
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w900),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.orange,
            tabs: [
              Tab(text: "All news"),
              Tab(text: "Business"),
              Tab(text: "Politics"),
              Tab(text: "Tech"),
              Tab(text: "Science"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> BackgroundImagePenquin()),);
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/me_1.jpg"),
              ),
            ),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 150,
                        initialPage: 0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        reverse: false,
                        enableInfiniteScroll: true,
                        autoPlayInterval: Duration(seconds: 10),
                        autoPlayAnimationDuration: Duration(milliseconds: 2000),
                        pauseAutoPlayOnTouch: true,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                      items: data.map((data) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Stack(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      data["imageSrc"],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Expanded(
                                      flex: 0,
                                      child: Row(
                                        children: [
                                          Spacer(flex: 1,),
                                          Expanded(
                                            flex: 10,
                                            child: Text(
                                              "${data["time"]} hours ago",
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 10,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: IconButton(
                                              color: Colors.white,
                                              onPressed: () {},
                                              icon: Icon(Icons.bookmark),
                                            ),
                                          ),
                                          Spacer(flex: 1,),
                                        ],
                                      ),
                                    ),
                                    Spacer(flex: 2,),
                                    Expanded(
                                      flex: 4,
                                      child: Text(
                                        data["heading"],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: map<Widget>(data, (index, url) {
                        return Container(
                          width: 9,
                          height: 9,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            border: _current == index
                                ? Border.all(width: 2, color: Colors.orange)
                                : Border.all(width: 0, color: Colors.white),
                            shape: BoxShape.circle,
                            color: _current == index
                                ? Colors.white
                                : Colors.orange,
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "Latest News",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return SingleNewsCard(
                        time: data[index]["time"],
                        hearding: data[index]["heading"],
                        imageSrc: data[index]["imageSrc"],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
