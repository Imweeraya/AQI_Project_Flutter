import 'package:air_buddy/feature/map/presentation/screens/map_screen.dart';
import 'package:air_buddy/infrastructure/router/router.dart';
import 'package:air_buddy/weather_feature/presentation/screen/home_screen.dart';
import 'package:core/layouts/buttom_navigation.dart';
import 'package:go_router/go_router.dart';

final routes = ['/', '/map'];

final router = GoRouter(routes: [
  ShellRoute(
      pageBuilder: (context, state, child) {
        return NoTransitionPage(
            child: ButtonNavigation(
          location: state.matchedLocation,
          child: child,
        ));
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/map',
          builder: (context, state) {
            return MapScreen();
          },
        ),
      ]
      ),
      ...weatherRoutesForRoot
]);
