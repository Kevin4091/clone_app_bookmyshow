// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:clone_app_bookmyshow/view/homescreen/homescreen.dart';
import 'package:clone_app_bookmyshow/view/live_screen/live_screen.dart';
import 'package:clone_app_bookmyshow/view/movie_screen/movie_screen.dart';
import 'package:clone_app_bookmyshow/view/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BottomNav());
}

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List pages = [HomeScreen(), MovieScreen(), LiveScreen(), ProfileScreen()];

  int indexNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/booklo.jpeg",
              scale: 3,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/WhatsApp Image 2024-02-01 at 10.54.24 PM.jpeg",
              scale: 3,
            ),
            label: "Movies",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/WhatsApp Image 2024-02-01 at 10.03.11 PM.jpeg",
              scale: 3,
            ),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          )
        ],
        currentIndex: indexNum,
        onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        },
        selectedFontSize: 20,
        selectedItemColor: Colors.red,
      ),
      body: Center(
        child: pages[indexNum],
      ),
    );
  }
}
