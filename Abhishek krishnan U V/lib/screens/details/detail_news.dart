import 'package:newsapp_ui_by_abhishek/Screens/home/widgets/main_bar.dart';
import 'package:flutter/material.dart';

class DetailNews extends StatelessWidget {
  static const routename = 'DetailNews';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [MainBar(), const SizedBox(height: 10), Text('China has continued with its crackdown on cryptocurrencies, resulting in a sharp fall in GPU prices in the country. The move has also plummetted Bitcoin value worldwide as crypto mining operations were halted.As reported by the state-owned publication, Global Times, Bitcoin mines in Southwest China’s Sichuan province were shut down on Sunday as local authorities ordered all mining operations in the region to stop last Friday. Authorities in other mining hubs in the north and southwest region have taken similar steps, which means over 90 percentage of China’s Bitcoin capacity can be shut down. ')],
          ),
        ),
      )),
    );
  }
}