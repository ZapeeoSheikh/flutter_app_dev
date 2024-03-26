import 'package:flutter/material.dart';
import 'package:mobile_app_dev/helpers/bottom_navigation_bar_widget.dart';
import 'package:mobile_app_dev/view/backup/backup_screen.dart';
import 'package:mobile_app_dev/view/dashboard/dashboard_screen.dart';
import 'package:mobile_app_dev/view/offline/offline_screen.dart';
import 'package:mobile_app_dev/view/profile/profile_screen.dart';

Map<String, WidgetBuilder> routes = {
  "/": (context) => const BottomNavBar(index: 0),
  "/dashboard": (context) => const DashboardPage(),
  "/profile": (context) => const ProfilePage(),
  "/backup": (context) => const BackupPage(),
  "/offline": (context) => const OfflinePage(),
  "/bottomNav": (context) => const BottomNavBar(index: 0),
};
