import 'package:flutter/material.dart';

import '../../helpers/appbar_widget.dart';
import '../../helpers/container_full_screen_widget.dart';
import '../../helpers/drawer_widget.dart';

class BackupPage extends StatelessWidget {
  const BackupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: "Backup", colors: Colors.cyan),
      drawer: DrawerWidget(color: Colors.cyan,),
      body: ContainerFullScreenWidget(title: "Backup", colors: Colors.cyan),
    );
  }
}
