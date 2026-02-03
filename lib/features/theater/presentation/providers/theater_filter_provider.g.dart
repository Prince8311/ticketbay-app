// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theater_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getTheaterLanguageFormatsHash() =>
    r'62e0d78c9a95db0236c2e6a83fb04f3006f38167';

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

/// See also [getTheaterLanguageFormats].
@ProviderFor(getTheaterLanguageFormats)
const getTheaterLanguageFormatsProvider = GetTheaterLanguageFormatsFamily();

/// See also [getTheaterLanguageFormats].
class GetTheaterLanguageFormatsFamily
    extends Family<AsyncValue<List<LanguageFormatsModel>?>> {
  /// See also [getTheaterLanguageFormats].
  const GetTheaterLanguageFormatsFamily();

  /// See also [getTheaterLanguageFormats].
  GetTheaterLanguageFormatsProvider call({
    required String theaterName,
  }) {
    return GetTheaterLanguageFormatsProvider(
      theaterName: theaterName,
    );
  }

  @override
  GetTheaterLanguageFormatsProvider getProviderOverride(
    covariant GetTheaterLanguageFormatsProvider provider,
  ) {
    return call(
      theaterName: provider.theaterName,
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
  String? get name => r'getTheaterLanguageFormatsProvider';
}

/// See also [getTheaterLanguageFormats].
class GetTheaterLanguageFormatsProvider
    extends AutoDisposeFutureProvider<List<LanguageFormatsModel>?> {
  /// See also [getTheaterLanguageFormats].
  GetTheaterLanguageFormatsProvider({
    required String theaterName,
  }) : this._internal(
          (ref) => getTheaterLanguageFormats(
            ref as GetTheaterLanguageFormatsRef,
            theaterName: theaterName,
          ),
          from: getTheaterLanguageFormatsProvider,
          name: r'getTheaterLanguageFormatsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTheaterLanguageFormatsHash,
          dependencies: GetTheaterLanguageFormatsFamily._dependencies,
          allTransitiveDependencies:
              GetTheaterLanguageFormatsFamily._allTransitiveDependencies,
          theaterName: theaterName,
        );

  GetTheaterLanguageFormatsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.theaterName,
  }) : super.internal();

  final String theaterName;

  @override
  Override overrideWith(
    FutureOr<List<LanguageFormatsModel>?> Function(
            GetTheaterLanguageFormatsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetTheaterLanguageFormatsProvider._internal(
        (ref) => create(ref as GetTheaterLanguageFormatsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        theaterName: theaterName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<LanguageFormatsModel>?>
      createElement() {
    return _GetTheaterLanguageFormatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetTheaterLanguageFormatsProvider &&
        other.theaterName == theaterName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, theaterName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetTheaterLanguageFormatsRef
    on AutoDisposeFutureProviderRef<List<LanguageFormatsModel>?> {
  /// The parameter `theaterName` of this provider.
  String get theaterName;
}

class _GetTheaterLanguageFormatsProviderElement
    extends AutoDisposeFutureProviderElement<List<LanguageFormatsModel>?>
    with GetTheaterLanguageFormatsRef {
  _GetTheaterLanguageFormatsProviderElement(super.provider);

  @override
  String get theaterName =>
      (origin as GetTheaterLanguageFormatsProvider).theaterName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
