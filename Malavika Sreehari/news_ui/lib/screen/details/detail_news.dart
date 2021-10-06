import 'package:flutter/material.dart';
import 'package:news_ui/screen/home/widgets/main_bar.dart';

class DetailsNews extends StatelessWidget {
  static const routeName = 'DetailsNews';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.black)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainBar(),
              const SizedBox(height: 10),
              Text(
                  'Late Monday, Facebook and the social media apps it owns, WhatsApp and Instagram, suffered a major global outage, including in India, lasting several hours. The outage potentially prevented billions of users of these apps across the globe from accessing, sending or receiving messages, on these platforms. In a tweet, Facebook wrote, “We’re aware that some people are having trouble accessing our apps and products. We’re working to get things back to normal as quickly as possible, and we apologize for any inconvenience”.'),
              Text(
                  'WhatsApp, too, tweeted: “We’re aware that some people are experiencing issues with WhatsApp at the moment. We’re working to get things back to normal and will send an update here as soon as possible. Thanks for your patience!” India alone has 53 crore WhatsApp users and 21 crore Instagram users. Facebook has 41 crore users in India. The Facebook family of apps suffered a major outage earlier this year in March, when the services were down for almost 45 minutes. Prior to this, in 2020 alone, four major WhatsApp outages had occurred, of which the most major one was in January, which had lasted around three hours. After this, there was one in April, followed by a two-hour outage in July and a brief one in August.')
            ],
          ),
        ),
      )),
    );
  }
}
