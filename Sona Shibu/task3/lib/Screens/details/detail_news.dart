import 'package:flutter/material.dart';
import 'package:task3/Screens/home/widgets/main_bar.dart';

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
            children: [
              MainBar(),
              const SizedBox(height: 10),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Odio euismod lacinia at quis risus sed vulputate odio. Venenatis urna cursus eget nunc scelerisque viverra mauris in aliquam. Elit duis tristique sollicitudin nibh sit amet commodo. Proin gravida hendrerit lectus a. Sit amet purus gravida quis blandit turpis. At tellus at urna condimentum mattis pellentesque id nibh tortor. Facilisis sed odio morbi quis commodo odio aenean sed adipiscing. Id ornare arcu odio ut sem nulla pharetra diam sit. Etiam non quam lacus suspendisse faucibus interdum posuere lorem. Velit sed ullamcorper morbi tincidunt ornare massa eget. Facilisis mauris sit amet massa vitae tortor condimentum. Amet consectetur adipiscing elit duis. Ornare lectus sit amet est placerat. Nunc sed augue lacus viverra vitae congue eu consequat ac. Laoreet id donec ultrices tincidunt. In fermentum et sollicitudin ac orci phasellus egestas tellus rutrum. Pharetra magna ac placerat vestibulum lectus.',
                  )
            ],
          ),
        ),
      )),
    );
  }
}
