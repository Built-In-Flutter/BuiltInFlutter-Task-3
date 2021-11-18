import 'package:flutter/material.dart';
import '../../config/var/var.dart' as configimg;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(configimg.profilePic),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Millie Ben',
                style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 18),
              ),

            ],
          ),
          const Icon(Icons.account_circle, size: 50, color: Colors.deepOrange,),
        ],
      ),
    ));
  }
}