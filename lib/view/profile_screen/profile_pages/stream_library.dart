// ignore_for_file: prefer_const_constructors

import 'package:clone_app_bookmyshow/utils/color_constatnts.dart';
import 'package:clone_app_bookmyshow/view/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class StreamLibrary extends StatelessWidget {
  const StreamLibrary({super.key});

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
        title: Text("Stream Library"),
      ),
      body: Column(
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 300,
                    width: MediaQuery.sizeOf(context).width,
                    child: Image(image: AssetImage("assets/images/prof.jpeg")),
                  ),
                ),
                Text(
                  "Start making your collection",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    textAlign: TextAlign.center,
                    "Find movies you like, relax and enjoy watching them on your phone or TV App",
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 96, 95, 95))),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        backgroundColor: MaterialStatePropertyAll(Colors.red)),
                    onPressed: () {},
                    child: Text("Explore Movies"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
