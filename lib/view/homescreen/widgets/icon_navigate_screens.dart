// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:clone_app_bookmyshow/utils/home_icons.dart';
// import 'package:clone_app_bookmyshow/view/homescreen/widgets/icons_pages/stream_page.dart';
// import 'package:clone_app_bookmyshow/view/movie_screen/movie_screen.dart';
import 'package:flutter/material.dart';

class IconNavigateScreen extends StatelessWidget {
  final IconDb obj;
  const IconNavigateScreen({
    super.key,
    required this.obj,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Image.asset(obj.imgUrl), Text(obj.name)]),
    );
  }
}
