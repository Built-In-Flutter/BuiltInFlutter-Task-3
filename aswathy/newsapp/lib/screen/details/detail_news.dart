import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/widgets/main_bar.dart';

class DetailsNews extends StatelessWidget {
  static const routeName = 'Detailsnews';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.share, color: Colors.black87),
          ),
         
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black87,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Mainbar(),
                const SizedBox(height: 10),
                Text(
                    'Along with extensive cross-media content about the Stuttgart-based sports-car maker the Porscheportal will now also be offering current news and clasic background reports on the Swiss market at newsroom porscheWith content in German French and Italian plus some in English it is intended for media professionals as well as fans of the brand and other interestedSwitzerland is a country with a special relationship to Porsche and we want our new Swiss Newsroom to meet the high level of local interest in the brandexplains Michael GlinskiCEO of Porsche Schweiz AG Were expanding our informational resources and streamlining access to press materials for media representativesThe portal also offers new opportunities for fans of the brand to immerse themselves in the world of Porsche'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
