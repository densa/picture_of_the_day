// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$ApodImageImpl _$$$ApodImageImplFromJson(Map<String, dynamic> json) =>
    _$$ApodImageImpl(
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      url: json['url'] as String,
      hdurl: json['hdurl'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$$ApodImageImplToJson(_$$ApodImageImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'date': instance.date.toIso8601String(),
      'url': instance.url,
      'hdurl': instance.hdurl,
      'runtimeType': instance.$type,
    };

_$$ApodVideoImpl _$$$ApodVideoImplFromJson(Map<String, dynamic> json) =>
    _$$ApodVideoImpl(
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      url: json['url'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$$ApodVideoImplToJson(_$$ApodVideoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'date': instance.date.toIso8601String(),
      'url': instance.url,
      'runtimeType': instance.$type,
    };
