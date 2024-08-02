// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MoviePages extends StatelessWidget {
  MoviePages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
        title: Text("hh"),
        actions: [Icon(Icons.share_outlined)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://static.tnn.in/thumb/msid-106705759,thumbsize-1141027,width-1280,height-720,resizemode-75/106705759.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Icon(Icons.star),
                  Text("kk"),
                  Text("kk"),
                  Icon(Icons.chevron_right),
                  Container(
                    child: Center(
                        child: Text(
                      "Rate now",
                      style: TextStyle(color: Colors.red),
                    )),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.red),
                        color: Colors.white),
                  )
                ],
              ),
              height: 50,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
