import 'package:flutter/material.dart';
import 'package:mobile_app_dev/data/repository/http_helper.dart';
import 'package:mobile_app_dev/helpers/appbar_widget.dart';
import 'package:mobile_app_dev/helpers/container_full_screen_widget.dart';
import 'package:provider/provider.dart';
import '../../helpers/drawer_widget.dart';
import '../../utils/colors/color.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    final httpHelper = Provider.of<HttpHelper>(context, listen: false);
    // TODO: implement initState
    super.initState();
    httpHelper.getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "GCU LAHORE", colors: MyColor.teal),
      drawer: const DrawerWidget(
        color: MyColor.teal,
        index: 0,
      ),
      body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: MyColor.teal, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Consumer<HttpHelper>(
              builder: (context, value, child) {
                return value.obj != null
                    ? Column(
                        children: [
                          const Text(
                            "Weather Report",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 3),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Text(
                                "${value.obj!.temperature.round()}°C",
                                style: const TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              Text(
                                value.obj!.cityName,
                                style: const TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    letterSpacing: 3),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                value.obj!.description.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    letterSpacing: 3),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.wind_power,
                                size: 25,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${value.obj!.windSpeed} Km/h",
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.foggy,
                                size: 25,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${value.obj!.humidity}%",
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.cloud,
                                size: 25,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${value.obj!.cloudCover}%",
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Text(
                                "LAT: ${value.lat}",
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    letterSpacing: 3),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "LON: ${value.lon}",
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    letterSpacing: 3),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8,),
                          ElevatedButton(
                              onPressed: () {
                                value.reInit();
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.refresh,
                                    color: MyColor.teal,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Reload Weather",
                                    style: TextStyle(color: MyColor.teal),
                                  ),
                                ],
                              )),
                        ],
                      )
                    : const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      );
              },
            ),
          )),
    );
  }
}
