import 'package:flutter/material.dart';
import 'package:makup_booking/CategoryDetails.dart';
import 'package:makup_booking/Widgets/ScheduleAppointmentScreen.dart';

import 'HomeScreen.dart';
import 'SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Vaccination',
      home: const SafeArea(
        child: Scaffold(
          body: SplashScreen(),
        ),
      ),
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        CategoryDetails.routeName: (ctx) => CategoryDetails(),
        ScheduleAppointmentScreen.routeName: (ctx) => ScheduleAppointmentScreen(),
      },
    );
  }
}
