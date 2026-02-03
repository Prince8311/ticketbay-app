// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$locationListHash() => r'84a111382102ece3a1f00542570eff2590b98eba';

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

/// See also [locationList].
@ProviderFor(locationList)
const locationListProvider = LocationListFamily();

/// See also [locationList].
class LocationListFamily extends Family<AsyncValue<List<CityModel>>> {
  /// See also [locationList].
  const LocationListFamily();

  /// See also [locationList].
  LocationListProvider call({
    String? search,
  }) {
    return LocationListProvider(
      search: search,
    );
  }

  @override
  LocationListProvider getProviderOverride(
    covariant LocationListProvider provider,
  ) {
    return call(
      search: provider.search,
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
  String? get name => r'locationListProvider';
}

/// See also [locationList].
class LocationListProvider extends AutoDisposeFutureProvider<List<CityModel>> {
  /// See also [locationList].
  LocationListProvider({
    String? search,
  }) : this._internal(
          (ref) => locationList(
            ref as LocationListRef,
            search: search,
          ),
          from: locationListProvider,
          name: r'locationListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$locationListHash,
          dependencies: LocationListFamily._dependencies,
          allTransitiveDependencies:
              LocationListFamily._allTransitiveDependencies,
          search: search,
        );

  LocationListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.search,
  }) : super.internal();

  final String? search;

  @override
  Override overrideWith(
    FutureOr<List<CityModel>> Function(LocationListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LocationListProvider._internal(
        (ref) => create(ref as LocationListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        search: search,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CityModel>> createElement() {
    return _LocationListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocationListProvider && other.search == search;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LocationListRef on AutoDisposeFutureProviderRef<List<CityModel>> {
  /// The parameter `search` of this provider.
  String? get search;
}

class _LocationListProviderElement
    extends AutoDisposeFutureProviderElement<List<CityModel>>
    with LocationListRef {
  _LocationListProviderElement(super.provider);

  @override
  String? get search => (origin as LocationListProvider).search;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
