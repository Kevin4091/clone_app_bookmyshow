// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, dead_code, sort_child_properties_last

import 'package:clone_app_bookmyshow/utils/cinema_db/cinema_db.dart';
//import 'package:clone_app_bookmyshow/utils/home_icons.dart';
import 'package:flutter/material.dart';

class LiveEvents extends StatefulWidget {
  const LiveEvents({super.key});

  @override
  State<LiveEvents> createState() => _LiveEventsState();
}

class _LiveEventsState extends State<LiveEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 140,
          //crossAxisSpacing: 10,
        ),
        itemCount: liveEvents.length,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: 190,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //   color: Colors.red,
                  image: DecorationImage(
                      image: NetworkImage(liveEvents[index]["image"]),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      liveEvents[index]["day"],
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
              height: 25,
              width: 135,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
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
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(liveEvents[index]["name"]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
