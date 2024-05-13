import 'package:air_buddy/weather_feature/presentation/screen/home_screen.dart';
import 'package:go_router/go_router.dart';

// final weatherRoutesForRoot = [
//   GoRoute(
//     path: '/info',
//     name: 'info',
//     builder: (context, state) {
//       // final product = state.extra as ProductDisplay;
//       return WeatherInfoScreen();
//     },
//   )
// ];

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const HomeScreen();
    },
    // routes: [
    //   GoRoute(
    //     path: '/info',
    //     name: 'info',
    //     builder: (context, state) {
    //       // final product = state.extra as ProductDisplay;
    //       return WeatherInfoScreen();
    //     },
    //   )
    // ],
  )
]);
