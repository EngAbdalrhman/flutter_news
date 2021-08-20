import 'package:flutter/material.dart';

import 'consts.dart';

class NewsCard extends StatelessWidget {
  const NewsCard(
      {required this.title, required this.urlImage, required this.date});
  final title, urlImage, date;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 120.0,
            width: double.infinity,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 160,
                  height: 120,
                  child: Image.network(
                    urlImage ?? nullImage,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Expanded(
                            child: Text(
                              '$title',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          date,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 1.0,
          color: Colors.white,
        ),
      ],
    );
  }
}
