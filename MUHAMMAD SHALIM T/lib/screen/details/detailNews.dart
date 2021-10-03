import 'package:flutter/material.dart';
import 'package:news_app/screen/home/widget/mainBar.dart';

class DetailNews extends StatelessWidget {
  static const routName = 'DetailNews';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
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
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainBar(),
              SizedBox(
                height: 10,
              ),
              Text(
                "Ninja H2R, The world's fastest bike",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
