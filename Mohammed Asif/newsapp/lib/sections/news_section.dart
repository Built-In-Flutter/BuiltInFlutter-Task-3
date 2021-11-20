import 'package:flutter/material.dart';
import 'package:newsapp/widgets/custom_newstile.dart';
import 'package:newsapp/text_resources.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          CustomNewsTile(
              imageUrl: url1, headline: head1, date: date1, time: time1),
          Divider(),
          CustomNewsTile(
              imageUrl: url2, headline: head2, date: date2, time: time2),
          Divider(),
          CustomNewsTile(
              imageUrl: url3, headline: head3, date: date3, time: time3),
          Divider(),
          CustomNewsTile(
              imageUrl: url4, headline: head4, date: date4, time: time4),
          Divider(),
          CustomNewsTile(
              imageUrl: url5, headline: head5, date: date5, time: time5),
          Divider(),
          CustomNewsTile(
              imageUrl: url6, headline: head6, date: date6, time: time6),
          Divider(),
          CustomNewsTile(
              imageUrl: url7, headline: head7, date: date7, time: time7),
          Divider(),
          CustomNewsTile(
              imageUrl: url8, headline: head8, date: date8, time: time8),
          Divider(),
          CustomNewsTile(
              imageUrl: url9, headline: head9, date: date9, time: time9),
          Divider(),
          CustomNewsTile(
              imageUrl: url10, headline: head10, date: date10, time: time10),
        ],
      ),
    );
  }
}
