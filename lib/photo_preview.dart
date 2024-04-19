import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:picture_of_the_day/provider/provider.dart';

class PhotoPreview extends ConsumerWidget {
  const PhotoPreview({
    super.key,
    required this.date,
  });

  final String date;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apod = ref.watch(pictureOfTheDayProvider(date: date));
    return Scaffold(
      backgroundColor: Colors.black,
      body: apod.when(
        data: (data) {
          return data.map(
            image: (image) => Stack(
              children: [
                Center(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SizedBox(
                        height: constraints.maxHeight,
                        //TODO(denis): add image loading placeholder
                        child: Image.network(
                          image.hdurl,
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: GestureDetector(
                    onTap: () => context.pop(),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.black.withOpacity(0.5),
                    child: Center(
                      child: Text(
                        image.title,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //TODO(denis): return user to the previous screen if video
            video: (video) => Center(
              child: Text(
                'Video content is not supported',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
        //TODO: move error handling to a separate widget
        error: (error, stackTrace) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('An error occurred: $error'),
              ElevatedButton(
                onPressed: () => ref.refresh(pictureOfTheDayProvider()),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
