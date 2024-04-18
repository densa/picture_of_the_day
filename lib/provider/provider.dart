import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:picture_of_the_day/models/apod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

const baseUrl = 'api.nasa.gov';
const apiKey = 'IHE6wfIXbhRbcJKIZQTcJt0MmvCPQffEa3Ox70ey';

@riverpod
Future<Apod> pictureOfTheDay(PictureOfTheDayRef ref) async {
  final response = await http.get(
    Uri.https(
      baseUrl,
      '/planetary/apod',
      {
        'date': '2024-04-18',
        'api_key': apiKey,
      },
    ),
  );
  final json = jsonDecode(response.body) as Map<String, dynamic>;

  return Apod.fromJson(json);
}
