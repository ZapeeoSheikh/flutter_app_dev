import 'package:flutter/material.dart';

import '../view/backup/backup_screen.dart';
import '../view/dashboard/dashboard_screen.dart';
import '../view/offline/offline_screen.dart';
import '../view/profile/profile_screen.dart';
import 'list_tile_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: color,
        elevation: 4,
        child: ListView(
          children: const [
            ListTileWidget(title: "Home", navigation: DashboardPage()),
            ListTileWidget(title: "Profile", navigation: ProfilePage()),
            ListTileWidget(title: "Backups", navigation: BackupPage()),
            ListTileWidget(title: "Offline", navigation: OfflinePage()),
          ],
        ));
  }
}
