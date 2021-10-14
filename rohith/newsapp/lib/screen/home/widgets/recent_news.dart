import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/screen/config/var/var.dart';

class Recentnews extends StatelessWidget {
  const Recentnews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index){
            return Column(
              children: [
                Container(child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: screenWidth * 0.28,
                          height: 80,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(oneplus, fit: BoxFit.cover,)),),
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        width: screenWidth * 0.45,
                        child: Text('Did Mars Ever Look Like Earth? NASA Scientist Answers',style: TextStyle(fontSize: 13),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.calendar_today),
                        const SizedBox(width: 5),
                        Text('14 Oct 2021'),
                      ],
                    )
                  ],
                ),),
                Container(child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: screenWidth * 0.28,
                          height: 80,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(plane, fit: BoxFit.cover,)),),
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        width: screenWidth * 0.45,
                        child: Text('Pakistan airline suspends flights from Kabul citing Taliban`s heavy-handed interference',style: TextStyle(fontSize: 13),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.calendar_today),
                        const SizedBox(width: 5),
                        Text('14 Oct 2021'),
                      ],
                    )
                  ],
                ),),
                Container(child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: screenWidth * 0.28,
                          height: 80,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(coal, fit: BoxFit.cover,)),),
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        width: screenWidth * 0.45,
                        child: Text('Coal India temporarily halts supply to non-power customers',style: TextStyle(fontSize: 13),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.calendar_today),
                        const SizedBox(width: 5),
                        Text('13 Oct 2021'),
                      ],
                    )
                  ],
                ),),
                Container(child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: screenWidth * 0.28,
                          height: 80,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(stock, fit: BoxFit.cover,)),),
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        width: screenWidth * 0.45,
                        child: Text('Taking Stock: Bull charge pushes Sensex, Nifty to new highs; bank, metal, IT stocks shine',style: TextStyle(fontSize: 13),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.calendar_today),
                        const SizedBox(width: 5),
                        Text('13 Oct 2021'),
                      ],
                    )
                  ],
                ),),
                Container(child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: screenWidth * 0.28,
                          height: 80,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(taiwan, fit: BoxFit.cover,)),),
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        width: screenWidth * 0.45,
                        child: Text('Fire in Taiwan’s Kaohsiung city kills at least 46, wounds over 40',style: TextStyle(fontSize: 13),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.calendar_today),
                        const SizedBox(width: 5),
                        Text('12 Oct 2021'),
                      ],
                    )
                  ],
                ),),
                Container(child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: screenWidth * 0.28,
                          height: 80,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(crash, fit: BoxFit.cover,)),),
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        width: screenWidth * 0.45,
                        child: Text('Tata Punch SUV scores 5-star in Global NCAP crash test',style: TextStyle(fontSize: 13),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.calendar_today),
                        const SizedBox(width: 5),
                        Text('13 oct 2021'),
                      ],
                    )
                  ],
                ),),
              ],
            );
          }
      ),
    );
  }
}
