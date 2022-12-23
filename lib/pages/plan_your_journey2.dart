import 'package:firebase_crud/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class PlanPage2 extends StatefulWidget {
  const PlanPage2({super.key});

  @override
  State<PlanPage2> createState() => _PlanPage2State();
}

class _PlanPage2State extends State<PlanPage2> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      )),
                  Text(
                    "Nagpur",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 71, 70, 70)),
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
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Container(
                height: 550,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 23, 90, 100)),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(50))),
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Comfortable Journey",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 32, 118, 131)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Padding(
                          padding: EdgeInsets.only(left: 70),
                          child: SizedBox(
                            child: Text(
                              "Route has  17 Charging Stations available.\n You are suggested  2  of them.",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 97, 96, 96)),
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 80,
                          width: 390,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 189, 179, 179))),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 70, top: 15),
                              child: SizedBox(
                                child: Text(
                                  "\t Nagpur",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 97, 96, 96),
                                    fontSize: 25,
                                  ),
                                ),
                              )))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 390,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 189, 179, 179))),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 70, top: 15),
                          child: SizedBox(
                            child: Text(
                              "1. Jaika Motors",
                              style: TextStyle(
                                color: Color.fromARGB(255, 97, 96, 96),
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          height: 80,
                          width: 390,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 189, 179, 179))),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 70, top: 17),
                              child: SizedBox(
                                child: Text(
                                  "\t Hydrabad",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 97, 96, 96),
                                    fontSize: 25,
                                  ),
                                ),
                              )))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 390,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 189, 179, 179))),
                        child: const Padding(
                            padding: EdgeInsets.only(left: 70, top: 17),
                            child: SizedBox(
                              child: Text(
                                "2. Radisson Blue",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 97, 96, 96),
                                  fontSize: 25,
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: (() {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          isDismissible: false,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          )),
                          builder: ((context) {
                            return Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.cyan),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        topRight: Radius.circular(50))),
                                height: 550,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      "Comfortable Journey",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 32, 118, 131)),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        Padding(
                                            padding: EdgeInsets.only(left: 70),
                                            child: SizedBox(
                                              child: Text(
                                                "Route has  17 Charging Stations available.\n You are suggested  2  of them.",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 97, 96, 96)),
                                              ),
                                            ))
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            height: 80,
                                            width: 390,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 189, 179, 179)),
                                            ),
                                            child: const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, top: 15),
                                                child: SizedBox(
                                                  child: Text(
                                                    "\t Nagpur",
                                                    style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 97, 96, 96),
                                                      fontSize: 25,
                                                    ),
                                                  ),
                                                )))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 390,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 189, 179, 179))),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 70, top: 15),
                                            child: SizedBox(
                                              child: Text(
                                                "1. Jaika Motors",
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 97, 96, 96),
                                                  fontSize: 25,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            height: 80,
                                            width: 390,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 189, 179, 179))),
                                            child: const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, top: 17),
                                                child: SizedBox(
                                                  child: Text(
                                                    "2. Radisson Blue",
                                                    style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 97, 96, 96),
                                                      fontSize: 25,
                                                    ),
                                                  ),
                                                )))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 390,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 189, 179, 179))),
                                          child: const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 70, top: 17),
                                              child: SizedBox(
                                                child: Text(
                                                  " \t Hydrabad",
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 97, 96, 96),
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Container(
                                        width: 300,
                                        height: 50,
                                        color: Colors.cyan[600],
                                        child: const Center(
                                          child: Text(
                                            "Book your slots",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )),
                                  ],
                                ));
                          }));
                    }),
                    child: Container(
                        width: 300,
                        height: 50,
                        color: Colors.cyan[600],
                        child: const Center(
                          child: Text(
                            "Book your slots",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
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
