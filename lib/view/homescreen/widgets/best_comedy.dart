// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:clone_app_bookmyshow/utils/cinema_db/cinema_db.dart';
import 'package:flutter/material.dart';

class BestComedyGrid extends StatelessWidget {
  const BestComedyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            "Browse Events by Category",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            "Live events for all your entertainment needs",
            style: TextStyle(
                fontSize: 15, color: Color.fromARGB(255, 131, 131, 131)),
          ),
        ),
        Container(
          height: 150,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 130),
              itemCount: 2,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.amber,
                          image: DecorationImage(
                              image: NetworkImage(comedyEvents[index]["image"]),
                              fit: BoxFit.cover)),
                      child: Center(
                        child: Text(
                          comedyEvents[index]["name"],
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  )),
        )
      ],
    ));
  }
}
