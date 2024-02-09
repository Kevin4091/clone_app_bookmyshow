// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

// import 'package:clone_app_bookmyshow/utils/color_constatnts.dart';
// import 'package:clone_app_bookmyshow/utils/home_icons.dart';
import 'package:clone_app_bookmyshow/view/carousel_page/carousel.dart';
import 'package:clone_app_bookmyshow/view/movie_screen/movie_genres/movie_genres.dart';
import 'package:clone_app_bookmyshow/view/movie_screen/movie_lang_screen/movie_lang_screen.dart';
import 'package:clone_app_bookmyshow/view/movie_screen/movie_widgets/movie_widget.dart';
import 'package:flutter/material.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  List<String> geners = [
    "Drama",
    "Thriller",
    "Action",
    "crime",
    "Adventure",
    "Comedy",
    "Family",
    "Horror",
    "Romantic",
    "Suspense",
    "Animation",
    "Anime",
    "Biography",
    "Musical",
    "Sci-Fi",
    "Sports",
    "Period"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Now showing",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Row(
                children: [
                  Text(
                    "Kochi",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("|  30 Movies", style: TextStyle(fontSize: 15))
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.search,
                size: 30,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 170,
                  //width: MediaQuery.sizeOf(context).width,
                  // color: Colors.amber,
                  child: CustomCarouselSlides(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  child: MovieLangScreen(),
                ),
              ),
              //  MovieLangScreen(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "Coming Soon ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        "Explore Upcoming Movies",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                  height: 60,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  height: 700,

                  // color: Colors.red,
                  //width: MediaQuery.sizeOf(context).width,
                  child: MovieWidget(),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                height: 40,
                width: MediaQuery.sizeOf(context).width,
                color: const Color.fromARGB(255, 233, 231, 231),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Genres",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.sizeOf(context).width,
                    color: const Color.fromARGB(255, 233, 231, 231),
                  ),
                  Container(
                    height: 35,
                    color: const Color.fromARGB(255, 233, 231, 231),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.white)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      geners[index],
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                )),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                              width: 10,
                            ),
                        itemCount: geners.length),
                  ),
                ],
              ),

              Container(
                height: 2150,
                //  color: Colors.red,
                child: MovieGenres(),
              ),
            ],
          ),
        ));
  }
}
