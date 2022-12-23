import 'package:firebase_crud/widgets/bottom_navigation.dart';
import 'package:firebase_crud/widgets/journeydetails.dart';
import 'package:firebase_crud/widgets/journeydetails2.dart';
import 'package:firebase_crud/widgets/slidebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_crud/pages/plan_your_journey.dart';
import 'package:firebase_crud/pages/Home.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({Key? key}) : super(key: key);

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> pageList = [
    const HomePage(),
    const PlanPage(),
    const Text('Under Development')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList.elementAt(selectedIndex),
    );
  }
}
