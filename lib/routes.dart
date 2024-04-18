import 'package:go_router/go_router.dart';
import 'package:picture_of_the_day/home.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
