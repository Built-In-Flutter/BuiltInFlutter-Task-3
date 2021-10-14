import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/widgets/main_bar.dart';

class Portfolio extends StatelessWidget {

  static const routeName = 'Portfolio';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/mypic.jpg'),
                radius: 40.0,
              ),
            ),
            SizedBox(height: 20.0,),
            const Center(
              child: Text(
                'Rohith Prakash',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            Center(
              child: Text(
                'Full Stack Developer',
                style: TextStyle(
                  color: Colors.grey[600],
                  letterSpacing: 1.5,
                ),
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Container(
              width: 420.0,
              height:60.0,
              padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(
                    Radius.circular(5.0)
                ),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'About',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Align(
                    child: Icon(
                      Icons.arrow_drop_down,
                      size: 40.0,
                      color: Colors.grey[850],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 10.0,),
            Container(
              width: 420.0,
              height:60.0,
              padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0)
                ),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Skills',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Align(
                    child: Icon(
                      Icons.arrow_drop_down,
                      size: 40.0,
                      color: Colors.grey[850],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 10.0,),
            Container(
              width: 420.0,
              height:60.0,
              padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0)
                ),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Connect',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Align(
                    child: Icon(
                      Icons.arrow_drop_up,
                      size: 40.0,
                      color: Colors.grey[850],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 30.0,),

            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: Row(
                children: [
                  Text(
                    'Github:',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20.0,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(width: 30.0,),
                  Text(
                    'rohithp7777',
                    style: TextStyle(
                      color: Colors.yellowAccent[600],
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: Row(
                children: [
                  Text(
                    'LinkedIn:',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20.0,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(width: 30.0,),
                  Text(
                    'rohith-prakash-',
                    style: TextStyle(
                      color: Colors.yellowAccent[600],
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: Row(
                children: [
                  Text(
                    'Instagram:',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20.0,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(width: 30.0,),
                  Text(
                    'rohithp7._',
                    style: TextStyle(
                      color: Colors.yellowAccent[600],
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 40.0,
                    color: Colors.grey[600],
                  ),
                  SizedBox(width: 10.0,),
                  Text(
                    'rohithp8899@gmail.com',
                    style: TextStyle(
                      color: Colors.yellowAccent[600],
                      letterSpacing: 2.0,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
