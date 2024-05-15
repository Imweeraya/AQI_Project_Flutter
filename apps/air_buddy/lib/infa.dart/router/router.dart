import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/presentation/screen/home_screen.dart';
import 'package:air_buddy/weather_feature/presentation/screen/weather_info_screen.dart';
import 'package:go_router/go_router.dart';

final weatherRoutesForRoot = [
  GoRoute(
    path: '/info',
    name: 'info',
    builder: (context, state) {
      final listWeather = state.extra as List<Air>;
      return WeatherInfoScreen(
        weather: listWeather,
      );
    },
  )
];

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const HomeScreen();
    },
    routes: [
      GoRoute(
        path: '/info',
        name: 'info',
        builder: (context, state) {
          final listWeather = state.extra as List<Air>;
          return WeatherInfoScreen(
            weather: listWeather,
          );
        },
      )
    ],
  )
]);
