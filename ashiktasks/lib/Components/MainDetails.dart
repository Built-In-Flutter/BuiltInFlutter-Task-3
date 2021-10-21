import 'package:ashiktasks/Components/MainNews.dart';
import 'package:flutter/material.dart';

class MainDetails extends StatelessWidget {
  const MainDetails({Key key}) : super(key: key);

  static const routeName = 'MainDetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
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
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainNews(),
              SizedBox(height: 20.0),
              Text(
                "A motorcycle, often called a motorbike, bike, or cycle, is a two- or three-wheeled motor vehicle\nA motorcycle, often called a motorbike, bike, or cycle, is a two- or three-wheeled motor vehicle\nA motorcycle, often called a motorbike, bike, or cycle, is a two- or three-wheeled motor vehicle\nA motorcycle, often called a motorbike, bike, or cycle, is a two- or three-wheeled motor vehicle\nA motorcycle, often called a motorbike, bike, or cycle, is a two- or three-wheeled motor vehicle\n",
                style: Theme.of(context).primaryTextTheme.bodyText2,
              )
            ],
          ),
        ),
      )),
    );
  }
}
