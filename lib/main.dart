import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news/layout/home.dart';
import 'package:news/moudels/consts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.orange,
                statusBarBrightness: Brightness.light),
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.orange,
          )),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFF303030),
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            elevation: 0.0,
            titleTextStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),),
        scaffoldBackgroundColor: Color(0xFF303030),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.white,
          elevation: 20.0,
        ),
      ),
      themeMode: modes[current_moode],
      home: SafeArea(
        child: HOME(),
      ),
    );
  }
}
