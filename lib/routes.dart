import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:picture_of_the_day/home.dart';
import 'package:picture_of_the_day/photo_preview.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'preview',
          pageBuilder: (context, state) {
            final params = state.extra as PhotoPreviewParams;
            return FadeInTransition(
              child: PhotoPreview(
                photoUrl: params.photoUrl,
                title: params.title,
              ),
            );
          },
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
