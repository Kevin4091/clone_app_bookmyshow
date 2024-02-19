// ignore_for_file: prefer_const_constructors, unused_import

import 'package:clone_app_bookmyshow/view/bottom_navigation/bottom_navigation.dart';
import 'package:clone_app_bookmyshow/view/carousel_page/carousel.dart';
import 'package:clone_app_bookmyshow/view/homescreen/widgets/best_events_grid.dart';
import 'package:clone_app_bookmyshow/view/homescreen/homescreen.dart';
import 'package:clone_app_bookmyshow/view/homescreen/widgets/cinema_card.dart';
import 'package:clone_app_bookmyshow/view/homescreen/widgets/movie_pages/movie_pages.dart';
import 'package:clone_app_bookmyshow/view/live_screen/live_fun_events/live_fun_events.dart';
import 'package:clone_app_bookmyshow/view/live_screen/live_screen.dart';
import 'package:clone_app_bookmyshow/view/live_screen/live_widget/live_widget.dart';
import 'package:clone_app_bookmyshow/view/movie_screen/movie_lang_screen/movie_lang_screen.dart';
import 'package:clone_app_bookmyshow/view/movie_screen/movie_screen.dart';
import 'package:clone_app_bookmyshow/view/movie_screen/movie_widgets/movie_widget.dart';
import 'package:clone_app_bookmyshow/view/profile_screen/profile_screen.dart';
import 'package:clone_app_bookmyshow/view/splash/splash_screen.dart';
//import 'package:clone_app_bookmyshow/view/recommended/recommended.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BookMyShow());
}

class BookMyShow extends StatelessWidget {
  const BookMyShow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
