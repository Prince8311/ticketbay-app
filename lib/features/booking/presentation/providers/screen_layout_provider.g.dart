// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_layout_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getScreenSectionsHash() => r'5892446942bdd2b4482178d4bb45b01ae393a231';

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

/// See also [getScreenSections].
@ProviderFor(getScreenSections)
const getScreenSectionsProvider = GetScreenSectionsFamily();

/// See also [getScreenSections].
class GetScreenSectionsFamily extends Family<AsyncValue<List<SectionItem>?>> {
  /// See also [getScreenSections].
  const GetScreenSectionsFamily();

  /// See also [getScreenSections].
  GetScreenSectionsProvider call({
    required String screen,
    required String screenId,
    required String theaterName,
  }) {
    return GetScreenSectionsProvider(
      screen: screen,
      screenId: screenId,
      theaterName: theaterName,
    );
  }

  @override
  GetScreenSectionsProvider getProviderOverride(
    covariant GetScreenSectionsProvider provider,
  ) {
    return call(
      screen: provider.screen,
      screenId: provider.screenId,
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
  String? get name => r'getScreenSectionsProvider';
}

/// See also [getScreenSections].
class GetScreenSectionsProvider
    extends AutoDisposeFutureProvider<List<SectionItem>?> {
  /// See also [getScreenSections].
  GetScreenSectionsProvider({
    required String screen,
    required String screenId,
    required String theaterName,
  }) : this._internal(
          (ref) => getScreenSections(
            ref as GetScreenSectionsRef,
            screen: screen,
            screenId: screenId,
            theaterName: theaterName,
          ),
          from: getScreenSectionsProvider,
          name: r'getScreenSectionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getScreenSectionsHash,
          dependencies: GetScreenSectionsFamily._dependencies,
          allTransitiveDependencies:
              GetScreenSectionsFamily._allTransitiveDependencies,
          screen: screen,
          screenId: screenId,
          theaterName: theaterName,
        );

  GetScreenSectionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.screen,
    required this.screenId,
    required this.theaterName,
  }) : super.internal();

  final String screen;
  final String screenId;
  final String theaterName;

  @override
  Override overrideWith(
    FutureOr<List<SectionItem>?> Function(GetScreenSectionsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetScreenSectionsProvider._internal(
        (ref) => create(ref as GetScreenSectionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        screen: screen,
        screenId: screenId,
        theaterName: theaterName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<SectionItem>?> createElement() {
    return _GetScreenSectionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetScreenSectionsProvider &&
        other.screen == screen &&
        other.screenId == screenId &&
        other.theaterName == theaterName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, screen.hashCode);
    hash = _SystemHash.combine(hash, screenId.hashCode);
    hash = _SystemHash.combine(hash, theaterName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetScreenSectionsRef on AutoDisposeFutureProviderRef<List<SectionItem>?> {
  /// The parameter `screen` of this provider.
  String get screen;

  /// The parameter `screenId` of this provider.
  String get screenId;

  /// The parameter `theaterName` of this provider.
  String get theaterName;
}

class _GetScreenSectionsProviderElement
    extends AutoDisposeFutureProviderElement<List<SectionItem>?>
    with GetScreenSectionsRef {
  _GetScreenSectionsProviderElement(super.provider);

  @override
  String get screen => (origin as GetScreenSectionsProvider).screen;
  @override
  String get screenId => (origin as GetScreenSectionsProvider).screenId;
  @override
  String get theaterName => (origin as GetScreenSectionsProvider).theaterName;
}

String _$getScreenLayoutHash() => r'e76408ea283c171cd6b03b56be6f9fae28addc6c';

/// See also [getScreenLayout].
@ProviderFor(getScreenLayout)
const getScreenLayoutProvider = GetScreenLayoutFamily();

/// See also [getScreenLayout].
class GetScreenLayoutFamily
    extends Family<AsyncValue<List<ScreenSeatsModel>?>> {
  /// See also [getScreenLayout].
  const GetScreenLayoutFamily();

  /// See also [getScreenLayout].
  GetScreenLayoutProvider call({
    required String screenId,
    required String sectionName,
    required String theaterName,
  }) {
    return GetScreenLayoutProvider(
      screenId: screenId,
      sectionName: sectionName,
      theaterName: theaterName,
    );
  }

  @override
  GetScreenLayoutProvider getProviderOverride(
    covariant GetScreenLayoutProvider provider,
  ) {
    return call(
      screenId: provider.screenId,
      sectionName: provider.sectionName,
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
  String? get name => r'getScreenLayoutProvider';
}

/// See also [getScreenLayout].
class GetScreenLayoutProvider
    extends AutoDisposeFutureProvider<List<ScreenSeatsModel>?> {
  /// See also [getScreenLayout].
  GetScreenLayoutProvider({
    required String screenId,
    required String sectionName,
    required String theaterName,
  }) : this._internal(
          (ref) => getScreenLayout(
            ref as GetScreenLayoutRef,
            screenId: screenId,
            sectionName: sectionName,
            theaterName: theaterName,
          ),
          from: getScreenLayoutProvider,
          name: r'getScreenLayoutProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getScreenLayoutHash,
          dependencies: GetScreenLayoutFamily._dependencies,
          allTransitiveDependencies:
              GetScreenLayoutFamily._allTransitiveDependencies,
          screenId: screenId,
          sectionName: sectionName,
          theaterName: theaterName,
        );

  GetScreenLayoutProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.screenId,
    required this.sectionName,
    required this.theaterName,
  }) : super.internal();

  final String screenId;
  final String sectionName;
  final String theaterName;

  @override
  Override overrideWith(
    FutureOr<List<ScreenSeatsModel>?> Function(GetScreenLayoutRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetScreenLayoutProvider._internal(
        (ref) => create(ref as GetScreenLayoutRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        screenId: screenId,
        sectionName: sectionName,
        theaterName: theaterName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ScreenSeatsModel>?> createElement() {
    return _GetScreenLayoutProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetScreenLayoutProvider &&
        other.screenId == screenId &&
        other.sectionName == sectionName &&
        other.theaterName == theaterName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, screenId.hashCode);
    hash = _SystemHash.combine(hash, sectionName.hashCode);
    hash = _SystemHash.combine(hash, theaterName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetScreenLayoutRef
    on AutoDisposeFutureProviderRef<List<ScreenSeatsModel>?> {
  /// The parameter `screenId` of this provider.
  String get screenId;

  /// The parameter `sectionName` of this provider.
  String get sectionName;

  /// The parameter `theaterName` of this provider.
  String get theaterName;
}

class _GetScreenLayoutProviderElement
    extends AutoDisposeFutureProviderElement<List<ScreenSeatsModel>?>
    with GetScreenLayoutRef {
  _GetScreenLayoutProviderElement(super.provider);

  @override
  String get screenId => (origin as GetScreenLayoutProvider).screenId;
  @override
  String get sectionName => (origin as GetScreenLayoutProvider).sectionName;
  @override
  String get theaterName => (origin as GetScreenLayoutProvider).theaterName;
}

String _$getBookingCommissionsHash() =>
    r'61a3c016d1cbb3247e5ff9d7b33d590a65ddd807';

/// See also [getBookingCommissions].
@ProviderFor(getBookingCommissions)
const getBookingCommissionsProvider = GetBookingCommissionsFamily();

/// See also [getBookingCommissions].
class GetBookingCommissionsFamily extends Family<AsyncValue<CommissionModel?>> {
  /// See also [getBookingCommissions].
  const GetBookingCommissionsFamily();

  /// See also [getBookingCommissions].
  GetBookingCommissionsProvider call({
    required String theaterName,
    required int price,
  }) {
    return GetBookingCommissionsProvider(
      theaterName: theaterName,
      price: price,
    );
  }

  @override
  GetBookingCommissionsProvider getProviderOverride(
    covariant GetBookingCommissionsProvider provider,
  ) {
    return call(
      theaterName: provider.theaterName,
      price: provider.price,
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
  String? get name => r'getBookingCommissionsProvider';
}

/// See also [getBookingCommissions].
class GetBookingCommissionsProvider
    extends AutoDisposeFutureProvider<CommissionModel?> {
  /// See also [getBookingCommissions].
  GetBookingCommissionsProvider({
    required String theaterName,
    required int price,
  }) : this._internal(
          (ref) => getBookingCommissions(
            ref as GetBookingCommissionsRef,
            theaterName: theaterName,
            price: price,
          ),
          from: getBookingCommissionsProvider,
          name: r'getBookingCommissionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getBookingCommissionsHash,
          dependencies: GetBookingCommissionsFamily._dependencies,
          allTransitiveDependencies:
              GetBookingCommissionsFamily._allTransitiveDependencies,
          theaterName: theaterName,
          price: price,
        );

  GetBookingCommissionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.theaterName,
    required this.price,
  }) : super.internal();

  final String theaterName;
  final int price;

  @override
  Override overrideWith(
    FutureOr<CommissionModel?> Function(GetBookingCommissionsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetBookingCommissionsProvider._internal(
        (ref) => create(ref as GetBookingCommissionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        theaterName: theaterName,
        price: price,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CommissionModel?> createElement() {
    return _GetBookingCommissionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetBookingCommissionsProvider &&
        other.theaterName == theaterName &&
        other.price == price;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, theaterName.hashCode);
    hash = _SystemHash.combine(hash, price.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetBookingCommissionsRef
    on AutoDisposeFutureProviderRef<CommissionModel?> {
  /// The parameter `theaterName` of this provider.
  String get theaterName;

  /// The parameter `price` of this provider.
  int get price;
}

class _GetBookingCommissionsProviderElement
    extends AutoDisposeFutureProviderElement<CommissionModel?>
    with GetBookingCommissionsRef {
  _GetBookingCommissionsProviderElement(super.provider);

  @override
  String get theaterName =>
      (origin as GetBookingCommissionsProvider).theaterName;
  @override
  int get price => (origin as GetBookingCommissionsProvider).price;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
