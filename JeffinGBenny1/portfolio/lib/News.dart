import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/size_config.dart';

class News  extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    SizedBox(width: 10),

                    Container(
                      width: 26,
                      alignment: Alignment.center,


                      /* decoration: BoxDecoration(
                                    color: Colors.black12,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.deepOrange ,width : 1)
                                ),*/),
                    SizedBox(width: 10),
                    Container(
                      //color: Colors.black,
                        alignment: Alignment.centerLeft,
                        width: size.width *.73,// .58,
                        height: 30,
                        //color: Colors.red,
                        child: Text('News',
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold))),

                  ],
                ),
              ),
        Container(
          height: 1000,
                width:500,
                child: ListView(
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                    children: <Widget>[ Container(
                            height:150,
                            width:100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                                spreadRadius: 5,
                                color: Colors.black12)
                          ]),
                      child:Row(
                        children:[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image (image: AssetImage('assets/news1.jpg'
                            ), height:150,
                              width:100,),
                          ),
                          Column(
                            children: [
                              Text('Ram Gopal Varma slames ',

                                  style: TextStyle(

                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text('NCB for misusing power',

                                  style: TextStyle(

                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Directors Ram Gopal Varma '),

                              ),
                                Text('Gupta have come down heavily on  '),
                                    Text('Narcotics Control Bureau (NCB) '),
                            ],
                          ),

                        ],
                      )
                  ),

                Container(
                    height:150,
                    width:100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              offset: const Offset(0, 0),
                              spreadRadius: 5,
                              color: Colors.black12)
                        ]),
                    child:Row(
                      children:[

                        Column(
                          children: [
                            Text('India complete 3-0 sweep',
                                style: TextStyle(

                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('New Zealand showed '),

                            ),
                            Text('no semblance of fight'),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image (image: AssetImage('assets/news2.jpg'
                          ), height:200,
                            width:100,),
                        ),
                      ],
                    )
                ),
                Container(
                    height:150,
                    width:100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              offset: const Offset(0, 0),
                              spreadRadius: 5,
                              color: Colors.black12)
                        ]),
                    child:Row(
                      children:[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image (image: AssetImage('assets/news3.jpg'
                          ), height:200,
                            width:100,),
                        ),
                        Column(
                          children: [
                            Text('Modern education',
                                style: TextStyle(

                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text('ill mannered :CJI Ramana',
                                style: TextStyle(

                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text('Speaking at an event  '
                                ),
                            Text('Chief Justice of India Ramana  '),
                                Text('education also focuses on '),
                                Text('spiritual functions'),
                          ],
                        ),

                      ],
                    )
                ),

            ],
          ),
              ),
        ],
      ),
        ),
      ),
    );
  }
}
