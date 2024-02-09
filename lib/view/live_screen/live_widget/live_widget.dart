// ignore_for_file: prefer_const_constructors

import 'package:clone_app_bookmyshow/utils/cinema_db/cinema_db.dart';
import 'package:flutter/material.dart';

class LiveWidget extends StatefulWidget {
  const LiveWidget({super.key});

  @override
  State<LiveWidget> createState() => _LiveWidgetState();
}

class _LiveWidgetState extends State<LiveWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.red,
        height: 400,
        child: ListView.separated(
            // shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      height: 80,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(liveProfile[index]["image"]),
                              fit: BoxFit.cover),
                          color: Colors.amber),
                    ),
                    Text(liveProfile[index]["name"])
                  ],
                ),
            separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
            itemCount: liveProfile.length),
      ),
    );
  }
}
