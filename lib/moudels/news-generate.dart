import 'package:flutter/material.dart';
import 'package:news/moudels/card.dart';

import 'consts.dart';

class Generate extends StatelessWidget {
  const Generate({
    required this.number,
    required this.title,
    required this.urlImage,
    required this.date,
  });
  final number;
  final title;
  final urlImage;
  final date;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: number,
      itemBuilder: (BuildContext context, index) {
        myindex = index;
        return NewsCard(
          title: title,
          urlImage: urlImage,
          date: date,
        );
      },
    );
  }
}
