import 'package:flutter/material.dart';

class categorylist extends StatelessWidget {
  const categorylist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scrollFont = Theme.of(context).primaryTextTheme.bodyText2!.merge(
          TextStyle(fontWeight: FontWeight.w700),
        );
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'All',
              style: scrollFont,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Sports', style: scrollFont),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Entertainment', style: scrollFont),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Technology', style: scrollFont),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Automotive', style: scrollFont),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Astrology', style: scrollFont),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Space Research', style: scrollFont),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Education', style: scrollFont),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Bussiness', style: scrollFont),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Movies', style: scrollFont),
          )
        ],
      ),
    );
  }
}
