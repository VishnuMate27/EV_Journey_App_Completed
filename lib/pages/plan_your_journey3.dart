// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PlanPage3 extends StatelessWidget {
  const PlanPage3({super.key});

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
                    "Booking Summary",
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
                          padding: EdgeInsets.only(left: 50),
                          child: SizedBox(
                            child: Text(
                              "You will be charged only booking amount. The\n charging amount will be taken after charging.",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 97, 96, 96),
                                  fontWeight: FontWeight.bold),
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      const Text("1.Jaika  Motors  booking cost"),
                      const SizedBox(
                        width: 73,
                      ),
                      const Text("Rs.30"),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      const Text("2.Raddison Blue booking "),
                      const SizedBox(
                        width: 100,
                      ),
                      const Text("Rs.90"),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      const Text("Total Cost  "),
                      const SizedBox(
                        width: 187,
                      ),
                      const Text("Rs.120"),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.cyan[600],
                          borderRadius: BorderRadius.circular(5)),
                      width: 300,
                      height: 50,
                      child: const Center(
                        child: Text(
                          "Pay Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ]),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.charging_station_sharp),
              label: "Charging Stations"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.route_sharp), label: "Route"),
        ],
      ),
    );
  }
}
