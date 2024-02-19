// ignore_for_file: prefer_const_constructors

import 'package:clone_app_bookmyshow/view/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class YourOder extends StatelessWidget {
  const YourOder({super.key});

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
        title: Text("Your Orders"),
      ),
      body: Center(child: Text("You have no bookings")),
    );
  }
}
