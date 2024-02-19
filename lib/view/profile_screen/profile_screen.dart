// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'package:flutter/foundation.dart';
import 'package:clone_app_bookmyshow/view/profile_screen/profile_pages/help_centre.dart';
import 'package:clone_app_bookmyshow/view/profile_screen/profile_pages/play_credit.dart';
import 'package:clone_app_bookmyshow/view/profile_screen/profile_pages/stream_library.dart';
import 'package:clone_app_bookmyshow/view/profile_screen/profile_pages/your_order.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 223, 221, 221),
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi !",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Row(
                children: [
                  Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 8,
                  )
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.account_circle,
                size: 30,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: 450,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => YourOder(),
                            ));
                      },
                      child: ListTile(
                        leading: Icon(Icons.shopping_bag),
                        title: Text("Your Orders"),
                        subtitle: Text("View all your bookings & purchases"),
                        trailing: Icon(Icons.chevron_right),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StreamLibrary(),
                            ));
                      },
                      child: ListTile(
                        leading: Icon(Icons.live_tv),
                        title: Text("Stream Library"),
                        subtitle: Text("Rented & purchased Movies"),
                        trailing: Icon(Icons.chevron_right),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlayCredit(),
                            ));
                      },
                      child: ListTile(
                        leading: Icon(Icons.local_atm),
                        title: Text("Play Credit Card"),
                        subtitle: Text(
                            "View your Play Credit Card details and offers"),
                        trailing: Icon(Icons.chevron_right),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HelpCentre(),
                            ));
                      },
                      child: ListTile(
                        leading: Icon(Icons.help),
                        title: Text("Help Centre"),
                        subtitle: Text("Need help or have questions?"),
                        trailing: Icon(Icons.chevron_right),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Account & Settings"),
                      subtitle: Text("Location, Payments, Permissions & more"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 430,
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.redeem),
                      title: Text("Rewards"),
                      subtitle: Text("View your rewards & unlock new ones"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.dataset),
                      title: Text("Offers"),
                      //subtitle: Text("Location, Payments, Permissions & more"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.redeem),
                      title: Text("Gift cards"),
                      // subtitle: Text("Location, Payments, Permissions & more"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.emoji_food_beverage),
                      title: Text("Food & Beverages"),
                      // subtitle: Text("Location, Payments, Permissions & more"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.visibility),
                      title: Text("List your Show"),
                      subtitle: Text("Got an event? Partner with us"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
