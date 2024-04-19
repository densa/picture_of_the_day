import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:picture_of_the_day/home.dart';
import 'package:picture_of_the_day/photo_preview.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      redirect: (context, state) {
        if (state.pathParameters.isEmpty) {
          // Redirect to today's date (e.g. /2021-08-01)
          final date = DateFormat('yyyy-MM-dd').format(DateTime.now());
          return '/$date';
        }
        return null;
      },
      routes: [
        GoRoute(
          path: ':date',
          builder: (context, state) {
            final date = state.pathParameters['date']!;
            return HomeScreen(date: date);
          },
          routes: [
            GoRoute(
              path: 'preview',
              pageBuilder: (context, state) {
                return FadeInTransition(
                  child: PhotoPreview(
                    date: state.pathParameters['date']!,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    ),
  ],
);

class FadeInTransition extends CustomTransitionPage<void> {
  FadeInTransition({super.key, required super.child})
      : super(
          transitionDuration: const Duration(milliseconds: 350),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(
              opacity: animation.drive(
                Tween<double>(
                  begin: 0,
                  end: 1,
                ).chain(
                  CurveTween(curve: Curves.ease),
                ),
              ),
              child: child,
            );
          },
        );
}
