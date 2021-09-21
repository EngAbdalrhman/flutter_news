import 'package:flutter/material.dart';
import 'package:news/layout/search.dart';
import 'package:news/moudels/componets.dart';
import 'package:news/moudels/consts.dart';

import '../main.dart';

class HOME extends StatefulWidget {
  @override
  _HOMEState createState() => _HOMEState();
}

int currentindex = 0;

class _HOMEState extends State<HOME> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    businessData = getBusiness();
    sportsData = getSports();
    techData = getTech();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your Name',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'your email',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                darken[darkIndex]['icon'],
                color: Colors.grey,
                size: 25.0,
              ),
              title: Text(
                darken[darkIndex]['TEXT'],
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
              onTap: () {
                setState(() {
                  switch (current_moode) {
                    case 0:
                      current_moode = 1;
                      darkIndex = 1;
                      break;
                    case 1:
                      current_moode = 0;
                      darkIndex = 0;
                      break;
                  }
                  runApp(MyApp());
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.flag),
              title: Text(
                'Egypt',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
              onTap: () {
                setState(() {
                  country = 'eg';
                  // runApp(MyApp());
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'usa',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
              onTap: () {
                setState(() {
                  country = 'us';
                  //runApp(MyApp());
                });
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('News'),
        actions: [
          Container(
            margin: EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: () {
                if (search_index == 1) search_index = 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => searching[search_index],
                  ),
                );
              },
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        onTap: (index) {
          setState(
            () {
              currentindex = index;
            },
          );
        },
        currentIndex: currentindex,
      ),
      body: screens[currentindex],
    );
  }
}
