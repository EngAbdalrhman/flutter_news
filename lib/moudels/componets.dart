import 'package:flutter/material.dart';
import 'package:news/layout/business.dart';
import 'package:news/layout/search.dart';
import 'package:news/layout/search_data.dart';
import 'package:news/layout/settings.dart';
import 'package:news/layout/sports.dart';
import 'package:news/layout/tech.dart';
import 'package:http/http.dart' as http; //create instance object
//import 'package:news/model/news.dart';
import 'package:news/model/newses.dart';
import 'package:news/moudels/consts.dart';
import 'dart:convert';

List<Widget> screens = [
  Business(),
  Sports(),
  Tech(),
  Settings(),
];
List<Widget> searching = [
  SearchBar(),
  SearchData(),
];

List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
    icon: Icon(Icons.business),
    label: 'Business',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.sports),
    label: 'Sports',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.science),
    label: 'Tech',
  ),
  /* BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: 'Settings',
  ),*/
];

Future<Newses> getBusiness() async {
  category = 'business';
  http.Response futureBusiness = await http.get(Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=$country&category=$category&apiKey=$apiKey'));
  // print(futureBusiness.body);
  if (futureBusiness.statusCode == 200) {
    return Newses.fromJson(json.decode(futureBusiness.body));
  } else {
    throw Exception('Can\'t get data');
  }
}

Future<Newses> getSports() async {
  category = 'sport';
  http.Response futureSport = await http.get(Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=$country&category=$category&apiKey=$apiKey'));

  if (futureSport.statusCode == 200) {
    return Newses.fromJson(json.decode(futureSport.body));
  } else {
    throw Exception('Can\'t get data');
  }
}

Future<Newses> getTech() async {
  category = 'science';
  http.Response futureTech = await http.get(Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=$country&category=$category&apiKey=$apiKey'));

  if (futureTech.statusCode == 200) {
    return Newses.fromJson(json.decode(futureTech.body));
  } else {
    throw Exception('Can\'t get data');
  }
}

Future<Newses> getSearched(String value) async {
  category = value;
  http.Response futureBusiness = await http.get(Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=$country&category=$category&apiKey=$apiKey'));
  print(futureBusiness.body);
  if (futureBusiness.statusCode == 200) {
    return Newses.fromJson(json.decode(futureBusiness.body));
  } else {
    throw Exception('Can\'t get data');
  }
}

late Future<Newses> businessData;
late Future<Newses> techData, sportsData;
