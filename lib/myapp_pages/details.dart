import 'package:flutter/material.dart';


class Item{
  int count;
  String title;
  String timings;
  IconData icons ;
  Item({required this.title,required this.timings,required this.icons, required this.count});
}
// class sizedbox{
//   int height;
// }

class CardItem{
  final String urlImage;
  final String title;
  final String subtitle;


  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}