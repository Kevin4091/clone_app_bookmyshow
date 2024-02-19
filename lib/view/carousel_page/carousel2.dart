import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlides2 extends StatelessWidget {
  const CustomCarouselSlides2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 200,
        width: double.infinity,
        child: CarouselSlider(
            options: CarouselOptions(
                autoPlayAnimationDuration: Duration(seconds: 1),
                height: 200,
                viewportFraction: 1,
                autoPlayCurve: Curves.ease,
                autoPlay: true,
                enlargeCenterPage: true),
            items: [
              Image.network(
                "https://img-cdn.thepublive.com/fit-in/640x430/filters:format(webp)/bollyy/media/media_files/44lk3p8XtQC8NtRVHYGJ.jpg",
                fit: BoxFit.cover,
                width: 1500,
              ),
              Image.network(
                "https://www.adgully.com/img/800/202010/my-safety-first-1.jpg",
                fit: BoxFit.cover,
                width: 1500,
              )
            ]),
      ),
    );
  }
}
