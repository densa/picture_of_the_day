import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:picture_of_the_day/routes.dart';

void main() {
  group('path routes', () {
    testWidgets('match home page', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp.router(
            routerConfig: router,
          ),
        ),
      );
      final RouteMatchList matches = router.routerDelegate.currentConfiguration;
      expect(matches.matches, hasLength(2));

      final date = DateFormat('yyyy-MM-dd').format(DateTime.now());
      expect(matches.uri.toString(), '/$date');
    });
  });
}
