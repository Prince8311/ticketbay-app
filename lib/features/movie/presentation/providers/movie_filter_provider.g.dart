// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getMovieLanguageFormatsHash() =>
    r'fdf5a1dbbc07a9a1403c7c5cf1ed6b716e1224ad';

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

/// See also [getMovieLanguageFormats].
@ProviderFor(getMovieLanguageFormats)
const getMovieLanguageFormatsProvider = GetMovieLanguageFormatsFamily();

/// See also [getMovieLanguageFormats].
class GetMovieLanguageFormatsFamily
    extends Family<AsyncValue<List<LanguageFormatsModel>?>> {
  /// See also [getMovieLanguageFormats].
  const GetMovieLanguageFormatsFamily();

  /// See also [getMovieLanguageFormats].
  GetMovieLanguageFormatsProvider call({
    required String movieName,
    required String location,
  }) {
    return GetMovieLanguageFormatsProvider(
      movieName: movieName,
      location: location,
    );
  }

  @override
  GetMovieLanguageFormatsProvider getProviderOverride(
    covariant GetMovieLanguageFormatsProvider provider,
  ) {
    return call(
      movieName: provider.movieName,
      location: provider.location,
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
  String? get name => r'getMovieLanguageFormatsProvider';
}

/// See also [getMovieLanguageFormats].
class GetMovieLanguageFormatsProvider
    extends AutoDisposeFutureProvider<List<LanguageFormatsModel>?> {
  /// See also [getMovieLanguageFormats].
  GetMovieLanguageFormatsProvider({
    required String movieName,
    required String location,
  }) : this._internal(
          (ref) => getMovieLanguageFormats(
            ref as GetMovieLanguageFormatsRef,
            movieName: movieName,
            location: location,
          ),
          from: getMovieLanguageFormatsProvider,
          name: r'getMovieLanguageFormatsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMovieLanguageFormatsHash,
          dependencies: GetMovieLanguageFormatsFamily._dependencies,
          allTransitiveDependencies:
              GetMovieLanguageFormatsFamily._allTransitiveDependencies,
          movieName: movieName,
          location: location,
        );

  GetMovieLanguageFormatsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.movieName,
    required this.location,
  }) : super.internal();

  final String movieName;
  final String location;

  @override
  Override overrideWith(
    FutureOr<List<LanguageFormatsModel>?> Function(
            GetMovieLanguageFormatsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMovieLanguageFormatsProvider._internal(
        (ref) => create(ref as GetMovieLanguageFormatsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        movieName: movieName,
        location: location,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<LanguageFormatsModel>?>
      createElement() {
    return _GetMovieLanguageFormatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMovieLanguageFormatsProvider &&
        other.movieName == movieName &&
        other.location == location;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, movieName.hashCode);
    hash = _SystemHash.combine(hash, location.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetMovieLanguageFormatsRef
    on AutoDisposeFutureProviderRef<List<LanguageFormatsModel>?> {
  /// The parameter `movieName` of this provider.
  String get movieName;

  /// The parameter `location` of this provider.
  String get location;
}

class _GetMovieLanguageFormatsProviderElement
    extends AutoDisposeFutureProviderElement<List<LanguageFormatsModel>?>
    with GetMovieLanguageFormatsRef {
  _GetMovieLanguageFormatsProviderElement(super.provider);

  @override
  String get movieName => (origin as GetMovieLanguageFormatsProvider).movieName;
  @override
  String get location => (origin as GetMovieLanguageFormatsProvider).location;
}

String _$getMovieAvailableDatesHash() =>
    r'02a8dc305c3e68a9729f517bd823a0b8e26e22c5';

/// See also [getMovieAvailableDates].
@ProviderFor(getMovieAvailableDates)
const getMovieAvailableDatesProvider = GetMovieAvailableDatesFamily();

/// See also [getMovieAvailableDates].
class GetMovieAvailableDatesFamily
    extends Family<AsyncValue<List<MovieDateItem>?>> {
  /// See also [getMovieAvailableDates].
  const GetMovieAvailableDatesFamily();

  /// See also [getMovieAvailableDates].
  GetMovieAvailableDatesProvider call({
    required String movieName,
    required String location,
    required String language,
    required String format,
  }) {
    return GetMovieAvailableDatesProvider(
      movieName: movieName,
      location: location,
      language: language,
      format: format,
    );
  }

  @override
  GetMovieAvailableDatesProvider getProviderOverride(
    covariant GetMovieAvailableDatesProvider provider,
  ) {
    return call(
      movieName: provider.movieName,
      location: provider.location,
      language: provider.language,
      format: provider.format,
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
  String? get name => r'getMovieAvailableDatesProvider';
}

/// See also [getMovieAvailableDates].
class GetMovieAvailableDatesProvider
    extends AutoDisposeFutureProvider<List<MovieDateItem>?> {
  /// See also [getMovieAvailableDates].
  GetMovieAvailableDatesProvider({
    required String movieName,
    required String location,
    required String language,
    required String format,
  }) : this._internal(
          (ref) => getMovieAvailableDates(
            ref as GetMovieAvailableDatesRef,
            movieName: movieName,
            location: location,
            language: language,
            format: format,
          ),
          from: getMovieAvailableDatesProvider,
          name: r'getMovieAvailableDatesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMovieAvailableDatesHash,
          dependencies: GetMovieAvailableDatesFamily._dependencies,
          allTransitiveDependencies:
              GetMovieAvailableDatesFamily._allTransitiveDependencies,
          movieName: movieName,
          location: location,
          language: language,
          format: format,
        );

  GetMovieAvailableDatesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.movieName,
    required this.location,
    required this.language,
    required this.format,
  }) : super.internal();

  final String movieName;
  final String location;
  final String language;
  final String format;

  @override
  Override overrideWith(
    FutureOr<List<MovieDateItem>?> Function(GetMovieAvailableDatesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMovieAvailableDatesProvider._internal(
        (ref) => create(ref as GetMovieAvailableDatesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        movieName: movieName,
        location: location,
        language: language,
        format: format,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<MovieDateItem>?> createElement() {
    return _GetMovieAvailableDatesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMovieAvailableDatesProvider &&
        other.movieName == movieName &&
        other.location == location &&
        other.language == language &&
        other.format == format;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, movieName.hashCode);
    hash = _SystemHash.combine(hash, location.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);
    hash = _SystemHash.combine(hash, format.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetMovieAvailableDatesRef
    on AutoDisposeFutureProviderRef<List<MovieDateItem>?> {
  /// The parameter `movieName` of this provider.
  String get movieName;

  /// The parameter `location` of this provider.
  String get location;

  /// The parameter `language` of this provider.
  String get language;

  /// The parameter `format` of this provider.
  String get format;
}

class _GetMovieAvailableDatesProviderElement
    extends AutoDisposeFutureProviderElement<List<MovieDateItem>?>
    with GetMovieAvailableDatesRef {
  _GetMovieAvailableDatesProviderElement(super.provider);

  @override
  String get movieName => (origin as GetMovieAvailableDatesProvider).movieName;
  @override
  String get location => (origin as GetMovieAvailableDatesProvider).location;
  @override
  String get language => (origin as GetMovieAvailableDatesProvider).language;
  @override
  String get format => (origin as GetMovieAvailableDatesProvider).format;
}

String _$getMovieInfoHash() => r'4c07a578116546a63fbb265c2d3d8c3eed54cde1';

/// See also [getMovieInfo].
@ProviderFor(getMovieInfo)
const getMovieInfoProvider = GetMovieInfoFamily();

/// See also [getMovieInfo].
class GetMovieInfoFamily extends Family<AsyncValue<List<InfoTheaterItem>?>> {
  /// See also [getMovieInfo].
  const GetMovieInfoFamily();

  /// See also [getMovieInfo].
  GetMovieInfoProvider call({
    required String movieName,
    required String location,
    required String date,
    required String language,
    required String format,
  }) {
    return GetMovieInfoProvider(
      movieName: movieName,
      location: location,
      date: date,
      language: language,
      format: format,
    );
  }

  @override
  GetMovieInfoProvider getProviderOverride(
    covariant GetMovieInfoProvider provider,
  ) {
    return call(
      movieName: provider.movieName,
      location: provider.location,
      date: provider.date,
      language: provider.language,
      format: provider.format,
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
  String? get name => r'getMovieInfoProvider';
}

/// See also [getMovieInfo].
class GetMovieInfoProvider
    extends AutoDisposeFutureProvider<List<InfoTheaterItem>?> {
  /// See also [getMovieInfo].
  GetMovieInfoProvider({
    required String movieName,
    required String location,
    required String date,
    required String language,
    required String format,
  }) : this._internal(
          (ref) => getMovieInfo(
            ref as GetMovieInfoRef,
            movieName: movieName,
            location: location,
            date: date,
            language: language,
            format: format,
          ),
          from: getMovieInfoProvider,
          name: r'getMovieInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMovieInfoHash,
          dependencies: GetMovieInfoFamily._dependencies,
          allTransitiveDependencies:
              GetMovieInfoFamily._allTransitiveDependencies,
          movieName: movieName,
          location: location,
          date: date,
          language: language,
          format: format,
        );

  GetMovieInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.movieName,
    required this.location,
    required this.date,
    required this.language,
    required this.format,
  }) : super.internal();

  final String movieName;
  final String location;
  final String date;
  final String language;
  final String format;

  @override
  Override overrideWith(
    FutureOr<List<InfoTheaterItem>?> Function(GetMovieInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMovieInfoProvider._internal(
        (ref) => create(ref as GetMovieInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        movieName: movieName,
        location: location,
        date: date,
        language: language,
        format: format,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<InfoTheaterItem>?> createElement() {
    return _GetMovieInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMovieInfoProvider &&
        other.movieName == movieName &&
        other.location == location &&
        other.date == date &&
        other.language == language &&
        other.format == format;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, movieName.hashCode);
    hash = _SystemHash.combine(hash, location.hashCode);
    hash = _SystemHash.combine(hash, date.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);
    hash = _SystemHash.combine(hash, format.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetMovieInfoRef on AutoDisposeFutureProviderRef<List<InfoTheaterItem>?> {
  /// The parameter `movieName` of this provider.
  String get movieName;

  /// The parameter `location` of this provider.
  String get location;

  /// The parameter `date` of this provider.
  String get date;

  /// The parameter `language` of this provider.
  String get language;

  /// The parameter `format` of this provider.
  String get format;
}

class _GetMovieInfoProviderElement
    extends AutoDisposeFutureProviderElement<List<InfoTheaterItem>?>
    with GetMovieInfoRef {
  _GetMovieInfoProviderElement(super.provider);

  @override
  String get movieName => (origin as GetMovieInfoProvider).movieName;
  @override
  String get location => (origin as GetMovieInfoProvider).location;
  @override
  String get date => (origin as GetMovieInfoProvider).date;
  @override
  String get language => (origin as GetMovieInfoProvider).language;
  @override
  String get format => (origin as GetMovieInfoProvider).format;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
