import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage('assets/images/mypic.jpg'),
                    ),
                    SizedBox(width: 10),
                    //Text('13 Oct,2021')
                  ],
                ),
                Container(
                  width: 300,
                  child: TextField(
                  style: TextStyle(fontSize: 15),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                  suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                  ),
                  border: InputBorder.none,
                  hintText: "Search News",
                  filled: true,
                  fillColor: Colors.grey[200])),
                ),

              ],
            ),
          );
  }
}
