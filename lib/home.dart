import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:picture_of_the_day/photo_preview.dart';
import 'package:picture_of_the_day/provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NASA's Astronomy Picture of the Day"),
      ),
      body: const _Content(),
    );
  }
}

class _Content extends ConsumerWidget {
  const _Content();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apod = ref.watch(pictureOfTheDayProvider);
    return apod.when(
      data: (data) {
        return LayoutBuilder(
          builder: (context, constraints) {
            double halfScreenHeight = MediaQuery.sizeOf(context).height / 2;
            double imageWidth = constraints.maxWidth;
            double imageHeight = halfScreenHeight;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    context.go('/preview',
                        extra: PhotoPreviewParams(
                          photoUrl: data.url,
                          title: data.title,
                        ));
                  },
                  child: SizedBox(
                    width: imageWidth,
                    height: imageHeight,
                    child: Image.network(data.url),
                  ),
                ),
                const SizedBox(height: 10),
                Text(data.title),
              ],
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("An error occurred: $error"),
            ElevatedButton(
              onPressed: () => ref.refresh(pictureOfTheDayProvider),
              child: const Text("Retry"),
            ),
          ],
        ),
      ),
    );
  }
}
