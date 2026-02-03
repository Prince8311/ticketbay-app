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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
