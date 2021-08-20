import 'package:flutter/material.dart';
import 'package:news/layout/search.dart';
import 'package:news/moudels/componets.dart';
import 'package:news/moudels/consts.dart';

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
                        builder: (context) => searching[search_index]));
              },
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        currentIndex: currentindex,
      ),
      body: screens[currentindex],
    );
  }
}
