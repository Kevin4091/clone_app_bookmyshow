// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, dead_code, sort_child_properties_last

import 'package:clone_app_bookmyshow/utils/cinema_db/cinema_db.dart';
//import 'package:clone_app_bookmyshow/utils/home_icons.dart';
import 'package:flutter/material.dart';

class MovieWidget extends StatefulWidget {
  const MovieWidget({super.key});

  @override
  State<MovieWidget> createState() => _MovieWidgetState();
}

class _MovieWidgetState extends State<MovieWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, mainAxisExtent: 350

            //crossAxisSpacing: 10,
            ),
        itemCount: cinemaDb.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: Colors.amber,
                    image: DecorationImage(
                        image: NetworkImage(cinemaDb[index]["image"]),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.thumb_up,
                        size: 17,
                        color: const Color.fromARGB(
                          255,
                          50,
                          112,
                          53,
                        ),
                      ),
                    ),
                    Text(cinemaDb[index]["rating"]),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      cinemaDb[index]["no"],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      cinemaDb[index]["like"],
                      style: TextStyle(
                          color: const Color.fromARGB(255, 111, 110, 110)),
                    )
                    //Text(cinemaDb[index]["likes"])
                  ],
                ),
                height: 30,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 212, 211, 211),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      cinemaDb[index]["name"],
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
// Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "Recommended Movies",
//                 style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
//               ),
//               Row(
//                 children: [
//                   Text("See All",
//                       style: TextStyle(fontSize: 15, color: Colors.red)),
//                   Icon(
//                     Icons.chevron_right,
//                     size: 15,
//                     color: Colors.red,
//                   )
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 400,
//             child: ListView.separated(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     // mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Card(
//                         // shape: RoundedRectangleBorder(
//                         //   borderRadius: BorderRadius.circular(20),
//                         // ),
//                         child: Image(
//                           image: NetworkImage(CinemaDb[index]["image"]),
//                           fit: BoxFit.cover,
//                         ),
//                         color: Colors.transparent,
//                         elevation: 1,
//                       ),
//                       Container(
//                         height: 25,
//                         width: 190,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             color: const Color.fromARGB(255, 234, 231, 231)),
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 8, right: 8),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: [
//                                   Icon(
//                                     Icons.grade,
//                                     size: 20,
//                                     color: Colors.red,
//                                   ),
//                                   Text(CinemaDb[index]["rating"]),
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   Text(CinemaDb[index]["no"]),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text(
//                                     "votes",
//                                     style: TextStyle(color: Colors.grey),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Text(CinemaDb[index]["name"])
//                     ],
//                   );
//                 },
//                 separatorBuilder: (context, index) => SizedBox(
//                       width: 8,
//                     ),
//                 itemCount: CinemaDb.length),
//           ),
//         ],
//       ),