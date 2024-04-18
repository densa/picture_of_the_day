// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pictureOfTheDayHash() => r'cf096ac5acdf6a1b656e028a57d28f3df7e3164c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [pictureOfTheDay].
@ProviderFor(pictureOfTheDay)
const pictureOfTheDayProvider = PictureOfTheDayFamily();

/// See also [pictureOfTheDay].
class PictureOfTheDayFamily extends Family<AsyncValue<Apod>> {
  /// See also [pictureOfTheDay].
  const PictureOfTheDayFamily();

  /// See also [pictureOfTheDay].
  PictureOfTheDayProvider call({
    String? date,
  }) {
    return PictureOfTheDayProvider(
      date: date,
    );
  }

  @override
  PictureOfTheDayProvider getProviderOverride(
    covariant PictureOfTheDayProvider provider,
  ) {
    return call(
      date: provider.date,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pictureOfTheDayProvider';
}

/// See also [pictureOfTheDay].
class PictureOfTheDayProvider extends AutoDisposeFutureProvider<Apod> {
  /// See also [pictureOfTheDay].
  PictureOfTheDayProvider({
    String? date,
  }) : this._internal(
          (ref) => pictureOfTheDay(
            ref as PictureOfTheDayRef,
            date: date,
          ),
          from: pictureOfTheDayProvider,
          name: r'pictureOfTheDayProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pictureOfTheDayHash,
          dependencies: PictureOfTheDayFamily._dependencies,
          allTransitiveDependencies:
              PictureOfTheDayFamily._allTransitiveDependencies,
          date: date,
        );

  PictureOfTheDayProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.date,
  }) : super.internal();

  final String? date;

  @override
  Override overrideWith(
    FutureOr<Apod> Function(PictureOfTheDayRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PictureOfTheDayProvider._internal(
        (ref) => create(ref as PictureOfTheDayRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        date: date,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Apod> createElement() {
    return _PictureOfTheDayProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PictureOfTheDayProvider && other.date == date;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, date.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PictureOfTheDayRef on AutoDisposeFutureProviderRef<Apod> {
  /// The parameter `date` of this provider.
  String? get date;
}

class _PictureOfTheDayProviderElement
    extends AutoDisposeFutureProviderElement<Apod> with PictureOfTheDayRef {
  _PictureOfTheDayProviderElement(super.provider);

  @override
  String? get date => (origin as PictureOfTheDayProvider).date;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
