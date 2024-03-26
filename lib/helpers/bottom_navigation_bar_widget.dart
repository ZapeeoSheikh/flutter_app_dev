import 'package:flutter/material.dart';
import 'package:mobile_app_dev/view/backup/backup_screen.dart';
import 'package:mobile_app_dev/view/dashboard/dashboard_screen.dart';
import 'package:mobile_app_dev/view/offline/offline_screen.dart';
import 'package:mobile_app_dev/view/profile/profile_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../utils/colors/color.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, required this.index});
  final int index;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
    _currentIndex = widget.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List pages = [
      const DashboardPage(),
      const ProfilePage(),
      const BackupPage(),
      const OfflinePage(),
    ];

    return Scaffold(
        backgroundColor: Colors.white,
        body: pages[_currentIndex],
        bottomNavigationBar:
        SalomonBottomBar(
          currentIndex: _currentIndex,
          margin: EdgeInsets.all(15),
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            // Home
            bottomNavBarItem("Home", _currentIndex == 0 ? Icons.home : Icons.home_outlined, MyColor.teal),

            // Profile
            bottomNavBarItem("Profile", _currentIndex == 1 ? Icons.account_circle : Icons.account_circle_outlined, MyColor.orange),

            // Backups
            bottomNavBarItem("Backups", _currentIndex == 2 ? Icons.backup :Icons.backup_outlined, MyColor.blue),

            // Offline
            bottomNavBarItem("Offline", _currentIndex == 3 ? Icons.offline_bolt : Icons.offline_bolt_outlined, MyColor.pink),

          ],
        )
    );
  }

  SalomonBottomBarItem bottomNavBarItem(String title, IconData icon, Color color) {
    return SalomonBottomBarItem(
        icon: Icon(icon, size: 22,),
        title: Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
        selectedColor: color,
        unselectedColor: MyColor.inActiveColor);
  }

}