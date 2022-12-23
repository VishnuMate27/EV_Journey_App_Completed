// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget hotelCard() {
  return /*Material(
    child: Column(
      children: [
        Container(
          height: 154,
          width: 354,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Vishnu Mate",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color.fromARGB(255, 63, 159, 172),
          ),
        ),
      ],
    ),
  );*/
      Center(
          child: Container(
    width: 300,
    height: 200,
    padding: new EdgeInsets.all(10.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Color.fromARGB(255, 63, 159, 172),
      elevation: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ListTile(
            leading: Icon(Icons.person, size: 60),
            title: Text('Vishnu Mate',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            subtitle:
                Text('Vehicle : Tata Nexon', style: TextStyle(fontSize: 18.0)),
          ),
        ],
      ),
    ),
  ));
}
