import 'package:flutter/material.dart';
import 'package:news/model/newses.dart';
import 'package:news/moudels/card.dart';
import 'package:news/moudels/componets.dart';

class Business extends StatelessWidget {
  const Business({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<Newses>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            //int? n = snapshot.data!.totalResults;

            return ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, index) {
                var article = snapshot.data!.articles![index];

                String urlToImage = article.urlToImage.toString();
                String? title = article.title;
                String date = article.publishedAt.toString();
                return NewsCard(
                  title: title,
                  urlImage: urlToImage,
                  date: date,
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else
            return CircularProgressIndicator();
        },
        future: getBusiness(),
      ),
    );
  }
}
