// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:clone_app_bookmyshow/view/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class PlayCredit extends StatelessWidget {
  const PlayCredit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text("Play Credit Card"),
      ),
      body: Column(
        children: [Divider(),
        
        ],
      ),
    );
  }
}