import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/config/var/var.dart' as configvar;
class CustomTile extends StatelessWidget {
  const CustomTile({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
            vertical: 10, horizontal: 10),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(configvar.kanewilliamson,
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  
                  width: screenWidth * 0.65,
                  child: Text(
                    'Spin component will be a big factor in Test series, says Kane Williamson',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                 
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Icontext(
                          iconData: Icons.calendar_today,
                          title: '23-11-2021'),
                      const SizedBox(width: 0),
                      
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class Icontext extends StatelessWidget {
  final IconData iconData;
  final String title;

  Icontext({required this.iconData, required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Icons.calendar_today, size: 14),
       Text('23-11-2021', style: Theme.of(context).textTheme.bodyText1),
      const SizedBox(
        width: 10,
      ),
     const SizedBox(
        width: 39,
          
      ),
      Row(children: [
      Icon(Icons.lock_clock, size: 14),
      Text('7 min read', style: Theme.of(context).textTheme.bodyText1),
      const SizedBox(
        width: 13,
          
      ),
    
    ]
      ),
    ],
    );
  }
}
