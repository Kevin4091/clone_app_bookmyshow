// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

//import 'package:clone_app_bookmyshow/utils/cinema_db/cinema_db.dart';
//import 'package:clone_app_bookmyshow/utils/home_icons.dart';
import 'package:clone_app_bookmyshow/view/carousel_page/carousel.dart';
import 'package:clone_app_bookmyshow/view/carousel_page/carousel2.dart';
import 'package:clone_app_bookmyshow/view/homescreen/widgets/best_events_grid.dart';
//import 'package:clone_app_bookmyshow/view/homescreen/live_events_card/live_events.dart';
import 'package:clone_app_bookmyshow/view/live_screen/live_fun_events/live_fun_events.dart';
import 'package:clone_app_bookmyshow/view/live_screen/live_fun_events/live_new_events.dart';
import 'package:clone_app_bookmyshow/view/live_screen/live_widget/live_widget.dart';
import 'package:flutter/material.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({super.key});

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Now showing",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Row(
                children: [
                  Text(
                    "Kochi",
                    style: TextStyle(fontSize: 15, color: Colors.red),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 8, color: Colors.red)
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.search,
                size: 30,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Divider(),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 150,
                  child: LiveWidget(),
                ),
              ),
              Container(
                height: 180,
                color: Colors.black,
                child: CustomCarouselSlides2(),
              ),
              Container(
                height: 200,
                child: BestEventsGrid(),
              ),
              Container(
                height: 600,
                width: MediaQuery.sizeOf(context).width,
                color: Color.fromARGB(255, 68, 66, 66),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Think Fun, Think Comedy",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Here's what we've put together for you",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 200,
                        child: LiveFunEvents(),
                      ),
                      Container(
                        height: 280,
                        color: Color.fromARGB(255, 68, 66, 66),
                        child: LiveNewEvents(),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
