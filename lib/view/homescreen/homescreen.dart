// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import

import 'package:clone_app_bookmyshow/utils/home_icons.dart';
import 'package:clone_app_bookmyshow/view/carousel_page/carousel.dart';
import 'package:clone_app_bookmyshow/view/homescreen/widgets/best_comedy.dart';
import 'package:clone_app_bookmyshow/view/homescreen/widgets/best_events_grid.dart';
import 'package:clone_app_bookmyshow/view/homescreen/widgets/icons_screen.dart';
import 'package:clone_app_bookmyshow/view/homescreen/widgets/live_events.dart';
import 'package:clone_app_bookmyshow/view/homescreen/widgets/cinema_card.dart';

import 'package:clone_app_bookmyshow/view/movie_screen/movie_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "It All Starts Here!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Row(
              children: [
                Text(
                  "Kottayam",
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                Icon(
                  Icons.chevron_right,
                  size: 15,
                  color: Colors.red,
                )
              ],
            ),
          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.notifications_active_outlined),
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.qr_code_scanner),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            IconsScreen(),
            Container(
              height: 180,
              width: MediaQuery.sizeOf(context).width,
              child: CustomCarouselSlides(),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: double.infinity,
                    // color: Color.fromARGB(255, 177, 174, 174),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Image.asset("assets/images/cont.jpeg")],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recommended Movies",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Text(
                            "See All",
                            style: TextStyle(color: Colors.red),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 6,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    height: 290,
                    width: MediaQuery.sizeOf(context).width,
                    child: CinemaCard(),
                  ),
                  Container(
                    height: 70,
                    // color: Colors.amber,
                    child: Image(image: AssetImage("assets/images/loca.jpeg")),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 300,
                    color: Colors.amber,
                    child: LiveEvents(),
                  ),
                  Container(
                    height: 160,
                    width: MediaQuery.sizeOf(context).width,
                    color: Colors.amber,
                    child: Image(
                      image: NetworkImage(
                          "https://assets-in.bmscdn.com/webin/static/offers/rbloffer/rbl-banner-1016.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 200,
                    child: BestEventsGrid(),
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  Container(
                    height: 200,
                    child: BestComedyGrid(),
                  ),
                  Container(
                    height: 140,
                    child: Image(image: AssetImage("assets/images/stre.jpeg")),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // CustomCarouselSlides(),
      // SizedBox(
      //   height: 20,
      // ),
    );
  }
}
