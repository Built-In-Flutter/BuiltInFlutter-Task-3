import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
          style: TextStyle(fontSize: 15),
          cursorColor: Colors.black,
          decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              border: InputBorder.none,
              hintText: "Search News",
              filled: true,
              fillColor: Colors.grey[200])),
    );
  }
}
