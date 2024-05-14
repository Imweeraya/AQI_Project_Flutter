import 'package:air_buddy/infa.dart/injection.dart';
import 'package:air_buddy/infa.dart/router/router.dart';
import 'package:flutter/material.dart';

void main() {
  registerWeatherServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
