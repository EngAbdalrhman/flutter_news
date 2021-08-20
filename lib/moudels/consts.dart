import 'package:flutter/material.dart';

const apiKey = 'a23724cc86064e6aa18a6cc260eabd0c';
String country = 'eg';
String category = 'business';
String nullImage =
    'https://i2.wp.com/learn.onemonth.com/wp-content/uploads/2017/08/1-10.png?w=845&ssl=1';
int myindex = 0;
var searchValue;
List<ThemeMode> modes = [
  ThemeMode.light,
  ThemeMode.dark,
];
int current_moode = 0;
int search_index = 0;
List darken = [
  {'icon': Icons.brightness_4, 'TEXT': 'Dark mode'},
  {'icon': Icons.brightness_high, 'TEXT': 'Light mode'}
];
int darkIndex = 0;
