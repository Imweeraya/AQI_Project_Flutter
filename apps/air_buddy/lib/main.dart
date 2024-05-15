import 'package:air_buddy/feature/map/presentation/screens/map_screen.dart';
import 'package:air_buddy/infrastructure/dependency_injection/inject.dart';
import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:flutter/material.dart';

void main() {
  registerCoreServices();
  registerWeatherServices();
  registerStationService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MapScreen(),
    );
  }
}
