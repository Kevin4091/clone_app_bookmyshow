// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:clone_app_bookmyshow/utils/home_icons.dart';
import 'package:clone_app_bookmyshow/view/homescreen/widgets/icons_pages/stream_page.dart';
//import 'package:clone_app_bookmyshow/view/homescreen/widgets/icon_navigate_screens.dart';
import 'package:clone_app_bookmyshow/view/movie_screen/movie_screen.dart';
import 'package:flutter/material.dart';

class IconsScreen extends StatefulWidget {
  const IconsScreen({super.key});

  @override
  State<IconsScreen> createState() => _IconsScreenState();
}

class _IconsScreenState extends State<IconsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 90,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: icons.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieScreen(),
                        ));
                  } else if (index == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StreamPage(),
                        ));
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              icons[index]["image"],
                              scale: 2.8,
                            ),
                            Text(
                              icons[index]["title"],
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              width: 30,
            ),
          ),
        ));
  }
}
