import 'package:air_buddy/feature/map/presentation/screens/map_screen.dart';
import 'package:air_buddy/infrastructure/dependency_injection/inject.dart';
import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:air_buddy/infrastructure/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  registerCoreServices();
  registerStationService();
  registerHereStationService();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const Directionality(
      textDirection: TextDirection.ltr,
      child: ProviderScope(
        child: MapScreen(),
      ),
    ),
  );
}
