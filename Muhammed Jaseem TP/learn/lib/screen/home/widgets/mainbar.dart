import 'package:flutter/material.dart';

class MainBar extends StatelessWidget {
  const MainBar({
    Key? key, 
    
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff2e3033),
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Color(0xff393e46),
              ),
              child: Image.asset('fonts/news.jpg'),
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: screenWidth * 0.8,
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            'Apple to soon launch Legacy Contacts to share your data after you die.',
            style: TextStyle(
              color: Color(0xFF222831),
              fontSize: 26,
              fontWeight: FontWeight.bold,
              fontFamily: 'SofiaBold',
            ),
          ),
        ),
      ],
    );
  }
}