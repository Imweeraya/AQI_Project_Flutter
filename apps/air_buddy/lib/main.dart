import 'package:air_buddy/feature/map/presentation/screens/map_screen.dart';
import 'package:air_buddy/infrastructure/dependency_injection/inject.dart';
import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:air_buddy/infa.dart/injection.dart';
import 'package:air_buddy/infa.dart/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  registerCoreServices();
  registerWeatherServices();
  registerStationService();
  registerHereStationService();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const Directionality(
      textDirection: TextDirection.ltr, // Or TextDirection.rtl, depending on your app's language direction
      child: ProviderScope(
        child: MapScreen(),
      ),
    ),
  );}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MapScreen(),
    );
  }
}
