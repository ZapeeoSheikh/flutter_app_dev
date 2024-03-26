import 'package:flutter/material.dart';
import 'package:mobile_app_dev/helpers/bottom_navigation_bar_widget.dart';
import 'list_tile_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key, required this.color, required this.index});
  final Color color;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: color,
        elevation: 4,
        child: ListView(
          children: [
            ListTileWidget(title: "Home", navigation: const BottomNavBar(index: 0,), tileColor: index == 0 ? Colors.white.withOpacity(0.4) : null,),
            ListTileWidget(title: "Profile", navigation: const BottomNavBar(index: 1,), tileColor: index == 1 ? Colors.white.withOpacity(0.4) : null,),
            ListTileWidget(title: "Backups", navigation: const BottomNavBar(index: 2,),  tileColor: index == 2 ? Colors.white.withOpacity(0.4) : null,),
            ListTileWidget(title: "Offline", navigation: const BottomNavBar(index: 3), tileColor: index == 3 ? Colors.white.withOpacity(0.4) : null,),
          ],
        ));
  }
}
