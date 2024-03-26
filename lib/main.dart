import 'package:flutter/material.dart';
import 'package:mobile_app_dev/utils/routes/route_paths.dart';
import 'package:provider/provider.dart';
import 'data/repository/http_helper.dart';

void main() {
  runApp(const StartupApp());
}

class StartupApp extends StatelessWidget {
  const StartupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HttpHelper()),
      ],
      child: MaterialApp(
        title: 'Mobile App Dev - Semester 08',
        debugShowCheckedModeBanner: false,
        routes: routes,
        initialRoute: "/",
      ),
    );
  }
}

