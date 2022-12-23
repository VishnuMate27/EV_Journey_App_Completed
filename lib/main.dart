import 'package:firebase_crud/pages/CSPage.dart';
import 'package:firebase_crud/pages/MapPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud/IncrementScreen.dart';
import 'package:firebase_crud/pages/ChargingSScreen.dart';
import 'package:firebase_crud/pages/Home.dart';
import 'package:firebase_crud/pages/plan_your_journey.dart';
import 'package:firebase_crud/pages/plan_your_journey2.dart';
import 'package:firebase_crud/pages/plan_your_journey3.dart';
import 'package:firebase_crud/pages/prelogin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomePage(),
        "/homeB": (context) => ChargingSScreen(),
        "/plan_journey_form": (context) => PlanPage(),
        "/plan_journey_form2": (context) => PlanPage2(),
        "/plan_journey_form3": (context) => PlanPage3(),
        "/charging_station_page": (context) => CSPage(),
        "/prelogin": (context) => PreLogin(),
        "/map_page": (context) => MapPage(),
        "/increment_screen": (context) => IncrementScreen(),
      },
    );
  }
}
