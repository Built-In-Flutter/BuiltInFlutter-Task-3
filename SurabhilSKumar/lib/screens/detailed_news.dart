import 'package:firstapp/screens/widgets/Redirect_heading.dart';
import 'package:flutter/material.dart';

import 'config/images/profile.dart';

class DetailedNews extends StatelessWidget {
  static const routeName = 'DetailedNews';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white60,
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
          ),
        ),
      ),
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: HeadingRe(),
            ),
          ),
          Row(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(dp),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text('Surabhil Ssk'),
                      ],
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Text('17 Nov, 2021'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
            child: Text(
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
              style: TextStyle(
                letterSpacing: 0.3,
                wordSpacing: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
