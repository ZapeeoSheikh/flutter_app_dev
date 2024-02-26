import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile_app_dev/helpers/appbar_widget.dart';
import 'package:mobile_app_dev/helpers/container_full_screen_widget.dart';
import '../../helpers/drawer_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: "Dashboard", colors: Colors.teal),
      drawer: DrawerWidget(color: Colors.teal,),
      body: ContainerFullScreenWidget(title: "Dashboard", colors: Colors.teal),
    );
  }
}
