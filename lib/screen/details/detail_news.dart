import 'package:flutter/material.dart';
import 'package:news/screen/home/widgets/main_bar.dart';

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
                  const SizedBox(height: 25),
                  Text(
                      'NEW DELHI: Indians are outpacing the rest of the world when it comes to cryptocurrency adoption even as investors are still awaiting the official verdict on cryptocurrency exchanges in the country', style: Theme.of(context).primaryTextTheme.bodyText1),
                  SizedBox(height: 24),
                  Text(
                      'A study conducted by the portal BrokerChooses annual crypto proliferation index reveals that at over 10 crore, India has the largest number of crypto owners in the world followed by the US and Russia.', style: Theme.of(context).primaryTextTheme.bodyText1)
                ],
              ),
            ),
          )),
    );
  }
}
