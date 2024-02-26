import 'package:flutter/material.dart';
import 'package:mobile_app_dev/view/dashboard/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mobile App Dev - Semester 08',
      debugShowCheckedModeBanner: false,
      home: Startup(),
    );
  }
}

class Startup extends StatelessWidget {
  const Startup({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DashboardPage(),
    );
  }
}
