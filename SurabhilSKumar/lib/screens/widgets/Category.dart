import 'package:flutter/cupertino.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('All'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('International'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Regional'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Bussiness'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Sports'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Editorial'),
          ),
        ],
      ),
    );
  }
}