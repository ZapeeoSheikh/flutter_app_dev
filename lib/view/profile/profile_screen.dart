import 'package:flutter/material.dart';
import 'package:mobile_app_dev/helpers/appbar_widget.dart';
import 'package:mobile_app_dev/helpers/container_full_screen_widget.dart';
import '../../helpers/drawer_widget.dart';
import '../../utils/colors/color.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: "Profile", colors: MyColor.orange),
      drawer: DrawerWidget(color: MyColor.orange, index: 1,),
      body: ContainerFullScreenWidget(title: "Profile", colors: MyColor.orange),
    );
  }
}
