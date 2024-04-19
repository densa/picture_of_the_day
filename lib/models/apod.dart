import 'package:freezed_annotation/freezed_annotation.dart';

part 'apod.freezed.dart';
part 'apod.g.dart';

@Freezed(fromJson: true, toJson: true)
sealed class Apod with _$Apod {
  const factory Apod.image({
    required String title,
    required DateTime date,
    required String url,
    required String hdurl,
  }) = _$ApodImage;

  const factory Apod.video({
    required String title,
    required DateTime date,
    required String url,
  }) = _$ApodVideo;

  //TODO: adjust this to match actual media types: image, video thow an error if the media type is not supported
  factory Apod.fromJson(Map<String, dynamic> json) {
    if (json['media_type'] == 'image') {
      return _$ApodImage.fromJson(json);
    } else {
      return _$ApodVideo.fromJson(json);
    }
  }
}
