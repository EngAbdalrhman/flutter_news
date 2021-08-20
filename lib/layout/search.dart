import 'package:flutter/material.dart';
import 'package:news/moudels/componets.dart';
import 'package:news/moudels/consts.dart';

import '../main.dart';
import 'home.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool nav = true;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('News'),
        ),
        body: nav
            ? Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: TextField(
                                controller: _controller,
                                decoration: InputDecoration(
                                  hintText: 'Search for Subject',
                                  labelText: 'Subject',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                keyboardType: TextInputType
                                    .text, // keyboard (nums only or all)
                                obscureText: false, // if password .. true
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  RaisedButton(
                    child: Text('Search'),
                    onPressed: () {
                      setState(() {
                        category = _controller.text;
                        searchValue = category;
                        getSearched(category);
                        search_index = 1;
                        runApp(MyApp());
                      });
                    },
                  ),
                ],
              )
            : screens[currentindex],
        bottomNavigationBar: BottomNavigationBar(
          items: items,
          onTap: (index) {
            setState(() {
              nav = false;
              currentindex = index;
            });
          },
          currentIndex: currentindex,
        ),
      ),
    );
  }
}
