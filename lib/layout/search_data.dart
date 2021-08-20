import 'package:flutter/material.dart';
import 'package:news/model/newses.dart';
import 'package:news/moudels/card.dart';
import 'package:news/moudels/componets.dart';
import 'package:news/moudels/consts.dart';

class SearchData extends StatefulWidget {
  SearchData({this.value});
  var value;
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchData> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('News'),
          ),
          body: Center(
            child: FutureBuilder<Newses>(
              builder: (context, snapshot) {
                if (snapshot.data!.totalResults == 0) {
                  return Center(
                      child: Text(
                    'No Data',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30,
                    ),
                  ));
                }
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
              future: getSearched(searchValue),
            ),
          )),
    );
  }
}
