// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:clone_app_bookmyshow/utils/home_icons.dart';
import 'package:clone_app_bookmyshow/view/homescreen/widgets/icon_navigate_screens.dart';
import 'package:clone_app_bookmyshow/view/movie_screen/movie_screen.dart';
import 'package:flutter/material.dart';

class IconsScreen extends StatefulWidget {
  const IconsScreen({super.key});

  @override
  State<IconsScreen> createState() => _IconsScreenState();
}

class _IconsScreenState extends State<IconsScreen> {
  static List<String> iconName = [
    "Movies",
    "Stream",
    "Music\nshows",
    "Comedy\nShows",
    "Sports",
    "See All"
  ];
  static List url = [
    "assets/images/movies.jpeg",
    "assets/images/video.jpeg",
    "assets/images/mics.jpeg",
    "assets/images/sports.jpeg",
    "assets/images/music.jpeg",
    "assets/images/amusement.jpeg",
    "assets/images/view.jpeg"
  ];

  final List<IconDb> iconData = List.generate(iconName.length,
      (index) => IconDb(name: iconName[index], imgUrl: url[index]));

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          //color: Colors.amber,
          height: 90,
          //width: MediaQuery.sizeOf(context).width,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: iconData.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        IconNavigateScreen(obj: iconData[index]),
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              iconData[index].imgUrl,
                              scale: 2.8,
                            ),
                            Text(
                              iconData[index].name,
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
