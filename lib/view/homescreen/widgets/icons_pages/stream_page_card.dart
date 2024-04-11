// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StreamWidgetCard extends StatelessWidget {
  const StreamWidgetCard({
    super.key,
    required this.url,
  });
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 250,
      width: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
    );
  }
}
