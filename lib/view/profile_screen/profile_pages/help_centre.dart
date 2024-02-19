// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:clone_app_bookmyshow/view/profile_screen/profile_pages/your_order.dart';
import 'package:clone_app_bookmyshow/view/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class HelpCentre extends StatelessWidget {
  const HelpCentre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 218, 218),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ));
          },
          icon: Icon(Icons.chevron_left_sharp),
        ),
        title: Text("Help Centre"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "How can we help you?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => YourOder(),
                    ));
              },
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  child: Center(
                      child: Text("Find your ticket details",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold))),
                  height: 60,
                  //decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
