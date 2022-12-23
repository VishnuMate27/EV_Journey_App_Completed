import 'package:firebase_crud/pages/ChargingSScreen.dart';
import 'package:firebase_crud/pages/MapPage.dart';
import 'package:firebase_crud/widgets/bottom_navigation.dart';
import 'package:firebase_crud/widgets/journeydetails.dart';
import 'package:firebase_crud/widgets/journeydetails2.dart';
import 'package:firebase_crud/widgets/slidebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_crud/pages/plan_your_journey.dart';
import 'package:firebase_crud/pages/CSPage.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CollectionReference _products =
      FirebaseFirestore.instance.collection('journeys');
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            actions: [
              Stack(
                children: [
                  // ignore: prefer_const_constructors
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.map_outlined,
                          color: Color.fromARGB(255, 71, 70, 70),
                        ),
                      ),
                      Text(
                        "Nagpur",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 71, 70, 70)),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      GestureDetector(
                        onTap: () {}, // Image tapped
                        child: Image.asset(
                          'assets/images/chevron-down.png',
                          fit: BoxFit.contain, // Fixes border issues
                        ),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_none,
                          color: Color.fromARGB(255, 71, 70, 70),
                        ),
                        color: Colors.grey,
                        iconSize: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person_outlined,
                          color: Color.fromARGB(255, 71, 70, 70),
                        ),
                        color: Colors.grey,
                        iconSize: 30,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Card(
                    child: Container(
                      height: 200,
                      width: 340,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/Advertisement.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                slideButton(),
                SizedBox(height: 15),
                journeyDetails(),
                SizedBox(
                  height: 20,
                ),
                journeyDetails2(),
                SizedBox(
                  height: 20,
                ),
                journeyDetails(),
              ],
            ),
          ),
        ),
        PlanPage(),
        ChargingSScreen(),
      ].elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _selectedIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Color(0xff17adb3),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/routes.png"),
            ),
            title: Text('Plan'),
            activeColor: Color(0xff17adb3),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/charging station.png"),
            ),
            title: Text('Charge'),
            activeColor: Color(0xff17adb3),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

//bottomNavigationBar: bottom());
//Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           actions: [
//             Stack(
//               children: [
//                 // ignore: prefer_const_constructors
//                 Row(
//                   children: [
//                     IconButton(
//                         onPressed: () {},
//                         icon: Icon(
//                           Icons.map_outlined,
//                           color: Color.fromARGB(255, 71, 70, 70),
//                         )),
//                     Text(
//                       "Nagpur",
//                       style: TextStyle(
//                           fontSize: 20, color: Color.fromARGB(255, 71, 70, 70)),
//                     ),
//                     SizedBox(
//                       width: 3,
//                     ),
//                     GestureDetector(
//                       onTap: () {}, // Image tapped
//                       child: Image.asset(
//                         'assets/images/chevron-down.png',
//                         fit: BoxFit.contain, // Fixes border issues
//                       ),
//                     ),
//                     SizedBox(
//                       width: 130,
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.notifications_none,
//                         color: Color.fromARGB(255, 71, 70, 70),
//                       ),
//                       color: Colors.grey,
//                       iconSize: 30,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.person_outlined,
//                         color: Color.fromARGB(255, 71, 70, 70),
//                       ),
//                       color: Colors.grey,
//                       iconSize: 30,
//                     )
//                   ],
//                 ),
//               ],
//             )
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 20,
//               ),
//               Center(
//                 child: Card(
//                   child: Container(
//                     height: 200,
//                     width: 340,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/images/Advertisement.png"),
//                           fit: BoxFit.cover),
//                       borderRadius: BorderRadius.circular(7),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               slideButton(),
//               SizedBox(height: 15),
//               journeyDetails(),
//               SizedBox(
//                 height: 20,
//               ),
//               journeyDetails2(),
//               SizedBox(
//                 height: 20,
//               ),
//               journeyDetails(),
//             ],
//           ),
//         ),
//         bottomNavigationBar: bottom());
