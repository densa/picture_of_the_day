import 'package:flutter_test/flutter_test.dart';
import 'package:picture_of_the_day/models/apod.dart';

void main() {
  group('Apod', () {
    test('Apod.fromJson should return a valid instance', () {
      final jsonImage = {
        'media_type': 'image',
        'title': 'Test Image',
        'date': DateTime.now().toIso8601String(),
        'url': 'https://example.com/image.jpg',
        'hdurl': 'https://example.com/image_hd.jpg',
      };

      final jsonVideo = {
        'media_type': 'video',
        'title': 'Test Video',
        'date': DateTime.now().toIso8601String(),
        'url': 'https://example.com/video.mp4',
      };

      final apodImage = Apod.fromJson(jsonImage);
      final apodVideo = Apod.fromJson(jsonVideo);

      expect(
        apodImage.map(
          image: (_) => true,
          video: (_) => false,
        ),
        true,
      );

      expect(apodImage, isA<Apod>());
      expect(apodImage.title, 'Test Image');
      expect(apodImage.date, isA<DateTime>());
      expect(apodImage.url, 'https://example.com/image.jpg');

      expect(
        apodVideo.map(
          image: (_) => false,
          video: (_) => true,
        ),
        true,
      );
      expect(apodVideo, isA<Apod>());
      expect(apodVideo.title, 'Test Video');
      expect(apodVideo.date, isA<DateTime>());
      expect(apodVideo.url, 'https://example.com/video.mp4');
    });
  });
}
