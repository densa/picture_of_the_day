// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Apod _$ApodFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'image':
      return _$ApodImage.fromJson(json);
    case 'video':
      return _$ApodVideo.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Apod',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Apod {
  String get title => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, DateTime date, String url, String hdurl)
        image,
    required TResult Function(String title, DateTime date, String url) video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, DateTime date, String url, String hdurl)?
        image,
    TResult? Function(String title, DateTime date, String url)? video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, DateTime date, String url, String hdurl)?
        image,
    TResult Function(String title, DateTime date, String url)? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ApodImage value) image,
    required TResult Function(_$ApodVideo value) video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ApodImage value)? image,
    TResult? Function(_$ApodVideo value)? video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ApodImage value)? image,
    TResult Function(_$ApodVideo value)? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApodCopyWith<Apod> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApodCopyWith<$Res> {
  factory $ApodCopyWith(Apod value, $Res Function(Apod) then) =
      _$ApodCopyWithImpl<$Res, Apod>;
  @useResult
  $Res call({String title, DateTime date, String url});
}

/// @nodoc
class _$ApodCopyWithImpl<$Res, $Val extends Apod>
    implements $ApodCopyWith<$Res> {
  _$ApodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? date = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$ApodImageImplCopyWith<$Res> implements $ApodCopyWith<$Res> {
  factory _$$$ApodImageImplCopyWith(
          _$$ApodImageImpl value, $Res Function(_$$ApodImageImpl) then) =
      __$$$ApodImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, DateTime date, String url, String hdurl});
}

/// @nodoc
class __$$$ApodImageImplCopyWithImpl<$Res>
    extends _$ApodCopyWithImpl<$Res, _$$ApodImageImpl>
    implements _$$$ApodImageImplCopyWith<$Res> {
  __$$$ApodImageImplCopyWithImpl(
      _$$ApodImageImpl _value, $Res Function(_$$ApodImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? date = null,
    Object? url = null,
    Object? hdurl = null,
  }) {
    return _then(_$$ApodImageImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      hdurl: null == hdurl
          ? _value.hdurl
          : hdurl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$ApodImageImpl implements _$ApodImage {
  const _$$ApodImageImpl(
      {required this.title,
      required this.date,
      required this.url,
      required this.hdurl,
      final String? $type})
      : $type = $type ?? 'image';

  factory _$$ApodImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$$ApodImageImplFromJson(json);

  @override
  final String title;
  @override
  final DateTime date;
  @override
  final String url;
  @override
  final String hdurl;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Apod.image(title: $title, date: $date, url: $url, hdurl: $hdurl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ApodImageImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.hdurl, hdurl) || other.hdurl == hdurl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, date, url, hdurl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ApodImageImplCopyWith<_$$ApodImageImpl> get copyWith =>
      __$$$ApodImageImplCopyWithImpl<_$$ApodImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, DateTime date, String url, String hdurl)
        image,
    required TResult Function(String title, DateTime date, String url) video,
  }) {
    return image(title, date, url, hdurl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, DateTime date, String url, String hdurl)?
        image,
    TResult? Function(String title, DateTime date, String url)? video,
  }) {
    return image?.call(title, date, url, hdurl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, DateTime date, String url, String hdurl)?
        image,
    TResult Function(String title, DateTime date, String url)? video,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(title, date, url, hdurl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ApodImage value) image,
    required TResult Function(_$ApodVideo value) video,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ApodImage value)? image,
    TResult? Function(_$ApodVideo value)? video,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ApodImage value)? image,
    TResult Function(_$ApodVideo value)? video,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$$ApodImageImplToJson(
      this,
    );
  }
}

abstract class _$ApodImage implements Apod {
  const factory _$ApodImage(
      {required final String title,
      required final DateTime date,
      required final String url,
      required final String hdurl}) = _$$ApodImageImpl;

  factory _$ApodImage.fromJson(Map<String, dynamic> json) =
      _$$ApodImageImpl.fromJson;

  @override
  String get title;
  @override
  DateTime get date;
  @override
  String get url;
  String get hdurl;
  @override
  @JsonKey(ignore: true)
  _$$$ApodImageImplCopyWith<_$$ApodImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$ApodVideoImplCopyWith<$Res> implements $ApodCopyWith<$Res> {
  factory _$$$ApodVideoImplCopyWith(
          _$$ApodVideoImpl value, $Res Function(_$$ApodVideoImpl) then) =
      __$$$ApodVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, DateTime date, String url});
}

/// @nodoc
class __$$$ApodVideoImplCopyWithImpl<$Res>
    extends _$ApodCopyWithImpl<$Res, _$$ApodVideoImpl>
    implements _$$$ApodVideoImplCopyWith<$Res> {
  __$$$ApodVideoImplCopyWithImpl(
      _$$ApodVideoImpl _value, $Res Function(_$$ApodVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? date = null,
    Object? url = null,
  }) {
    return _then(_$$ApodVideoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$ApodVideoImpl implements _$ApodVideo {
  const _$$ApodVideoImpl(
      {required this.title,
      required this.date,
      required this.url,
      final String? $type})
      : $type = $type ?? 'video';

  factory _$$ApodVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$$ApodVideoImplFromJson(json);

  @override
  final String title;
  @override
  final DateTime date;
  @override
  final String url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Apod.video(title: $title, date: $date, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ApodVideoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, date, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ApodVideoImplCopyWith<_$$ApodVideoImpl> get copyWith =>
      __$$$ApodVideoImplCopyWithImpl<_$$ApodVideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, DateTime date, String url, String hdurl)
        image,
    required TResult Function(String title, DateTime date, String url) video,
  }) {
    return video(title, date, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, DateTime date, String url, String hdurl)?
        image,
    TResult? Function(String title, DateTime date, String url)? video,
  }) {
    return video?.call(title, date, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, DateTime date, String url, String hdurl)?
        image,
    TResult Function(String title, DateTime date, String url)? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(title, date, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ApodImage value) image,
    required TResult Function(_$ApodVideo value) video,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ApodImage value)? image,
    TResult? Function(_$ApodVideo value)? video,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ApodImage value)? image,
    TResult Function(_$ApodVideo value)? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$$ApodVideoImplToJson(
      this,
    );
  }
}

abstract class _$ApodVideo implements Apod {
  const factory _$ApodVideo(
      {required final String title,
      required final DateTime date,
      required final String url}) = _$$ApodVideoImpl;

  factory _$ApodVideo.fromJson(Map<String, dynamic> json) =
      _$$ApodVideoImpl.fromJson;

  @override
  String get title;
  @override
  DateTime get date;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$$ApodVideoImplCopyWith<_$$ApodVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
