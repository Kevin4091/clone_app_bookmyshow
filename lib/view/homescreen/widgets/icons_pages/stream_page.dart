// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:clone_app_bookmyshow/utils/cinema_db/cinema_db.dart';
import 'package:clone_app_bookmyshow/view/carousel_page/carousel.dart';
import 'package:clone_app_bookmyshow/view/homescreen/widgets/icons_pages/stream_page_card.dart';
import 'package:flutter/material.dart';

class StreamPage extends StatefulWidget {
  const StreamPage({super.key});

  @override
  State<StreamPage> createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color.fromARGB(255, 35, 52, 67),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 17, 33, 46),
          leading: Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
          title: Text(
            "STREAM",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
          ),
          actions: [
            Icon(
              Icons.share,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.tv, color: Colors.white),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.search, color: Colors.white),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 540,
              width: double.infinity,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Spotlight",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 270,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) =>
                              StreamWidgetCard(url: stream[index]),
                          separatorBuilder: (context, index) => SizedBox(
                                width: 25,
                              ),
                          itemCount: stream.length),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(height: 150, child: CustomCarouselSlides()),
                  ],
                ),
              ),
            ),
            Text(
              "Premiere of the week",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
            ),
          ],
        ));
  }
}
