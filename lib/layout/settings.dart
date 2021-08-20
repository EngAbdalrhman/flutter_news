import 'package:flutter/material.dart';
import 'package:news/moudels/consts.dart';

import '../main.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: Row(
              children: [
                Icon(
                  darken[darkIndex]['icon'],
                  color: Colors.grey,
                  size: 25.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  darken[darkIndex]['TEXT'],
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                ),
              ],
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
          GestureDetector(
            child: Text(
              'Egypt',
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey,
              ),
            ),
            onTap: () {
              setState(() {
                country = 'eg';
                runApp(MyApp());
              });
            },
          ),
          GestureDetector(
            child: Text(
              'usa',
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey,
              ),
            ),
            onTap: () {
              setState(() {
                country = 'us';
                runApp(MyApp());
              });
            },
          ),
          GestureDetector(
            child: Text(
              'argantina',
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey,
              ),
            ),
            onTap: () {
              setState(() {
                country = 'ar';
                runApp(MyApp());
              });
            },
          ),
        ],
      ),
    );
  }
}
