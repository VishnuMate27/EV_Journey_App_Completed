import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

Widget slideButton() {
  return ToggleSwitch(
    minHeight: 50,
    minWidth: 170.0,
    cornerRadius: 25.0,
    borderColor: [Color.fromARGB(255, 154, 227, 236)],
    activeBgColors: [
      [Colors.cyan[600]!],
      [Colors.cyan[600]!]
    ],
    activeFgColor: Colors.white,
    inactiveBgColor: Colors.white,
    inactiveFgColor: Colors.cyan[600],
    initialLabelIndex: 1,
    totalSwitches: 2,
    labels: ['Upcoming Journeys', 'Past Journeys'],
    radiusStyle: true,
    onToggle: (index) {
      print('switched to: $index');
    },
  );
}
