// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class LiveFunEvents extends StatelessWidget {
  const LiveFunEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 68, 66, 66),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        children: [
          Container(
            child: Center(
              child: Text(
                "STAND UP",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/2747446/pexels-photo-2747446.jpeg?auto=compress&cs=tinysrgb&w=800"),
                  fit: BoxFit.cover,
                )),
            //color: Colors.amber,
          ),
          Container(
            child: Center(
              child: Text(
                "IMPROV",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/1763075/pexels-photo-1763075.jpeg?auto=compress&cs=tinysrgb&w=800"),
                  fit: BoxFit.cover,
                )),
            //color: Colors.amber,
          ),
          
        ],
      ),
    );
  }
}
