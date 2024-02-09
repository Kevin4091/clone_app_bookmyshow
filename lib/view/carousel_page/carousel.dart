import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlides extends StatelessWidget {
  const CustomCarouselSlides({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 150,
        width: double.infinity,
        child: CarouselSlider(
         
            options: CarouselOptions(
                autoPlayCurve: Curves.ease,
                autoPlay: true,
                enlargeCenterPage: true),
            items: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn96VDMBFhG26rGuk8f-4KtY2tOx4CVBEz6g&usqp=CAU",
                fit: BoxFit.cover,
                width: 1500,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-VhF87TyngOBzU-Pm5qwR7z9LPF68-S-ihw&usqp=CAU",
                fit: BoxFit.cover,
                width: 1500,
              )
            ]),
      ),
    );
  }
}
