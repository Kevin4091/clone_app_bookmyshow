// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MovieLangScreen extends StatefulWidget {
  const MovieLangScreen({super.key});

  @override
  State<MovieLangScreen> createState() => _MovieLangScreenState();
}

class _MovieLangScreenState extends State<MovieLangScreen> {
  List<String> lang = [
    "Malayalam",
    "Tamil",
    "Hindi",
    "Telugu",
    "English",
    "Japanese",
    "Multi Language"
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 30,
        //width: 10,
        color: Colors.transparent,
        child: ListView.separated(
          // shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Center(
                  child: Text(
                    lang[index],
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            );
          },
          itemCount: lang.length,
          separatorBuilder: (context, index) => SizedBox(
            width: 10,
          ),
        ),
      ),
    );
  }
}
