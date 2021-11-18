import 'package:flutter/material.dart';
import 'package:newapp/screen/home/widget/mainbar.dart';

class DetailNews extends StatelessWidget {
  static const routName = 'DetailNews';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.share,
              color: Colors.deepOrange,
            ),
          ),
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.deepOrange,
            )),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainBar(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "“At the time of Independence, we had about 15 lakh water bodies spread across rural India, but since then, over 12 lakh have been either encroached or polluted,” he said. The impact is being felt now with about 72% of aquifers drying up.He pointed out that the world was heading towards disaster, as water could be the main reason for the beginning of the third World War.“There is forced migration due to shortage of water from Central and western Asia and from Africa. The migrants are moving towards Europe and this is will lead to a major conflict,” said Mr. Rajendra Singh.Migration from India is also heavy, but so far this has mainly been voluntary or economic related.Indians are welcomed as they are not treated as climatic refugees. But days are not far when they will not be given preferential treatment, he said.“Till recently we have been associating global warming with gases, but now, the focus has shifted towards water,” he said.“Due to lack of greenery, the climate has become erratic and the Indian farmers are unable to link up crop pattern with the rainfall pattern.”Elaborating on his campaign ‘water is climate and climate is water,’ he said: “It revolves around six ‘R’s — respect for water, reduce usage, retreat, recycle, recharge and rejuvenate.”If a dry district such as Alwar in Rajasthan can recharge its ground water, why can’t the others, he asked.",
                      style: TextStyle(fontSize: 16,color: Colors.deepOrange),
                  ),
                ],
              ),
            ),
          )),        backgroundColor: Colors.black,

    );
  }
}
