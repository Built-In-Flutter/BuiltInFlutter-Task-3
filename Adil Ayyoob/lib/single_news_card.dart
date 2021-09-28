import 'package:flutter/material.dart';

class SingleNewsCard extends StatelessWidget {
  int time;
  String hearding;
  String imageSrc;
  SingleNewsCard({@required this.time,@required this.hearding,@required this.imageSrc});
  @override
  Widget build(BuildContext context) {
    return Container(
      //news container
      margin: EdgeInsets.only(
        top: 10,
      ),
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.only(
                left: 20,
                right: 10,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageSrc,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 18,
            child: Column(
              children: [
                Spacer(
                  flex: 2,
                ),
                Expanded(
                  flex: 6,
                  child: SizedBox(
                    child: Text(
                      hearding,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Text(
                          "${time} minutes ago",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.bookmark,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
