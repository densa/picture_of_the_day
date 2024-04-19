import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:picture_of_the_day/models/apod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

const baseUrl = 'api.nasa.gov';
// TODO: Move to .env file
const apiKey = 'IHE6wfIXbhRbcJKIZQTcJt0MmvCPQffEa3Ox70ey';

@riverpod
Future<Apod> pictureOfTheDay(PictureOfTheDayRef ref, {String? date}) async {
  /// Fetches the Astronomy Picture of the Day (APOD) from the NASA API.
  /// The [date] parameter is the date of the APOD to fetch.
  /// If the date is not specified, the APOD for the current date is fetched.
  /// [date] must be in the format '2000-01-01'.

  date ??= DateFormat('yyyy-MM-dd').format(DateTime.now());

  final response = await http.get(
    Uri.https(
      baseUrl,
      '/planetary/apod',
      {
        'date': date,
        'api_key': apiKey,
      },
    ),
  );
  final json = jsonDecode(response.body) as Map<String, dynamic>;

  return Apod.fromJson(json);
}
