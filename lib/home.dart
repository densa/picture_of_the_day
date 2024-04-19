import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:picture_of_the_day/provider/provider.dart';
import 'package:picture_of_the_day/widgets/photo.dart';
import 'package:picture_of_the_day/widgets/video.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.date,
  });

  final String date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NASA's Astronomy Picture of the Day"),
      ),
      body: _Content(date),
    );
  }
}

class _Content extends ConsumerWidget {
  const _Content(this.date);
  final String date;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apod = ref.watch(pictureOfTheDayProvider(date: date));
    return apod.when(
      data: (data) {
        return data.map(
          image: (image) => PhotoContent(
            photoUrl: image.url,
            title: image.title,
            onPhtoTap: () {
              context.go('/$date/preview');
            },
          ),
          video: (video) => VideoContent(videoUrl: video.url),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("An error occurred: $error"),
            ElevatedButton(
              onPressed: () => ref.refresh(pictureOfTheDayProvider()),
              child: const Text("Retry"),
            ),
          ],
        ),
      ),
    );
  }
}
