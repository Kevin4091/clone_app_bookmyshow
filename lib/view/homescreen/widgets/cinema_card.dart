// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, dead_code, sort_child_properties_last

import 'package:clone_app_bookmyshow/utils/cinema_db/cinema_db.dart';

import 'package:clone_app_bookmyshow/view/movie_screen/movie_screen.dart';
import 'package:clone_app_bookmyshow/view/profile_screen/profile_screen.dart';

import 'package:flutter/material.dart';

class CinemaCard extends StatefulWidget {
  const CinemaCard({super.key});

  @override
  State<CinemaCard> createState() => _CinemaCardState();
}

class _CinemaCardState extends State<CinemaCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: cinemaDb.length,
      itemBuilder: (context, index) => InkWell(
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
                  builder: (context) => ProfileScreen(),
                ));
          }
        },
        child: Column(
          children: [
            Container(
              height: 190,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(cinemaDb[index]["image"]),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8, bottom: 2, right: 3),
                    child: Icon(
                      Icons.thumb_up,
                      size: 14,
                      color: const Color.fromARGB(
                        255,
                        50,
                        112,
                        53,
                      ),
                    ),
                  ),
                  Text(cinemaDb[index]["rating"]),
                  SizedBox(
                    width: 2,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    cinemaDb[index]["like"],
                    style: TextStyle(
                        color: const Color.fromARGB(255, 111, 110, 110)),
                  )
                ],
              ),
              height: 25,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromARGB(255, 241, 239, 239),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(cinemaDb[index]["name"]),
                ),
              ],
            )
          ],
        ),
      ),
      separatorBuilder: (context, index) => SizedBox(
        width: 10,
      ),
    );
  }
}
