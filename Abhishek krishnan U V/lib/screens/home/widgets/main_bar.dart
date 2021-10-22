import 'package:flutter/material.dart';
import 'package:newsapp_ui_by_abhishek/Screens/config/var/var.dart' as configvar;

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
         
          child: Image.network(configvar.newspaperImage4),
        ),
        const SizedBox(height: 10),
        Container(
          width: screenWidth * 0.8,
          child: Text(
            'GPU and Crypto prices fall sharply...........',
            style: Theme.of(context).primaryTextTheme.headline5,
          ),
        ),
        const SizedBox(height: 0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                 
                  
                  const SizedBox(width: 10),
                  Text(
                    '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
             
            ],  
          ),
          const Divider(thickness: 3),
      ],
    );
  }
}