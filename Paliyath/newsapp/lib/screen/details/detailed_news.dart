import 'package:flutter/material.dart';
import 'package:portfolio/screen/home/widgets/main_bar.dart';

class DetailedNews extends StatelessWidget {
  static const routeName = 'DetailedNews';

  const DetailedNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              Icons.share,
              color: Colors.black,
            ),
          )
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Mainbar(),
              const SizedBox(height: 10),
              Column(
                children: [
                  Text(
                      'Recent reports that we have terminated employees due to their concerns over health practices are fundamentally untrue. The employees quoted in recent stories are still employed with Tesla and we have offered them work multiple times.',
                      style: Theme.of(context).textTheme.headline6),
                  const SizedBox(height: 10),
                  Text(
                      'All we have asked is that our employees talk to us and provide us the details of their own concern so we can do what we can to help find a solution.',
                      style: Theme.of(context).textTheme.bodyText1),
                  Text(
                      'Tesla has not only offered employees a window of time to stay home no questions asked, but waived our attendance policy for several weeks after we had approval to reopen our factories.',
                      style: Theme.of(context).textTheme.bodyText1),
                  Text(
                      ' In addition, those who have at-risk family members at home received two weeks paid leave through May 31. Tesla also provides 14-day COVID sick leave pay for employees who are quarantined, self-quarantine due to family members who are sick or have tested positive.',
                      style: Theme.of(context).textTheme.bodyText1),
                  Text(
                      'Teslas protective measures meet and exceed county, state and federal guidelines, and we are working diligently to enforce them. As confirmed by regular internal surveys, the vast majority of employees approve of the safety measures that are in place.',
                      style: Theme.of(context).textTheme.bodyText1)
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
