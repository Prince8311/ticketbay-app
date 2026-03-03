// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$reserveSeatsHash() => r'fc17b8cd3076bc36e6ef90a24c5d3a37c68567f7';

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

/// See also [reserveSeats].
@ProviderFor(reserveSeats)
const reserveSeatsProvider = ReserveSeatsFamily();

/// See also [reserveSeats].
class ReserveSeatsFamily extends Family<AsyncValue<SeatReserveResponse?>> {
  /// See also [reserveSeats].
  const ReserveSeatsFamily();

  /// See also [reserveSeats].
  ReserveSeatsProvider call({
    required SeatReserveRequest requestBody,
  }) {
    return ReserveSeatsProvider(
      requestBody: requestBody,
    );
  }

  @override
  ReserveSeatsProvider getProviderOverride(
    covariant ReserveSeatsProvider provider,
  ) {
    return call(
      requestBody: provider.requestBody,
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
  String? get name => r'reserveSeatsProvider';
}

/// See also [reserveSeats].
class ReserveSeatsProvider
    extends AutoDisposeFutureProvider<SeatReserveResponse?> {
  /// See also [reserveSeats].
  ReserveSeatsProvider({
    required SeatReserveRequest requestBody,
  }) : this._internal(
          (ref) => reserveSeats(
            ref as ReserveSeatsRef,
            requestBody: requestBody,
          ),
          from: reserveSeatsProvider,
          name: r'reserveSeatsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$reserveSeatsHash,
          dependencies: ReserveSeatsFamily._dependencies,
          allTransitiveDependencies:
              ReserveSeatsFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  ReserveSeatsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final SeatReserveRequest requestBody;

  @override
  Override overrideWith(
    FutureOr<SeatReserveResponse?> Function(ReserveSeatsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ReserveSeatsProvider._internal(
        (ref) => create(ref as ReserveSeatsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        requestBody: requestBody,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SeatReserveResponse?> createElement() {
    return _ReserveSeatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReserveSeatsProvider && other.requestBody == requestBody;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, requestBody.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ReserveSeatsRef on AutoDisposeFutureProviderRef<SeatReserveResponse?> {
  /// The parameter `requestBody` of this provider.
  SeatReserveRequest get requestBody;
}

class _ReserveSeatsProviderElement
    extends AutoDisposeFutureProviderElement<SeatReserveResponse?>
    with ReserveSeatsRef {
  _ReserveSeatsProviderElement(super.provider);

  @override
  SeatReserveRequest get requestBody =>
      (origin as ReserveSeatsProvider).requestBody;
}

String _$paymentCredentialsHash() =>
    r'bdb2e3b19a8a654d666f51696941119116117a07';

/// See also [paymentCredentials].
@ProviderFor(paymentCredentials)
const paymentCredentialsProvider = PaymentCredentialsFamily();

/// See also [paymentCredentials].
class PaymentCredentialsFamily
    extends Family<AsyncValue<PaymentCredentialsResponse?>> {
  /// See also [paymentCredentials].
  const PaymentCredentialsFamily();

  /// See also [paymentCredentials].
  PaymentCredentialsProvider call({
    required PaymentCredentialsRequest requestBody,
  }) {
    return PaymentCredentialsProvider(
      requestBody: requestBody,
    );
  }

  @override
  PaymentCredentialsProvider getProviderOverride(
    covariant PaymentCredentialsProvider provider,
  ) {
    return call(
      requestBody: provider.requestBody,
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
  String? get name => r'paymentCredentialsProvider';
}

/// See also [paymentCredentials].
class PaymentCredentialsProvider
    extends AutoDisposeFutureProvider<PaymentCredentialsResponse?> {
  /// See also [paymentCredentials].
  PaymentCredentialsProvider({
    required PaymentCredentialsRequest requestBody,
  }) : this._internal(
          (ref) => paymentCredentials(
            ref as PaymentCredentialsRef,
            requestBody: requestBody,
          ),
          from: paymentCredentialsProvider,
          name: r'paymentCredentialsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$paymentCredentialsHash,
          dependencies: PaymentCredentialsFamily._dependencies,
          allTransitiveDependencies:
              PaymentCredentialsFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  PaymentCredentialsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final PaymentCredentialsRequest requestBody;

  @override
  Override overrideWith(
    FutureOr<PaymentCredentialsResponse?> Function(
            PaymentCredentialsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PaymentCredentialsProvider._internal(
        (ref) => create(ref as PaymentCredentialsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        requestBody: requestBody,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PaymentCredentialsResponse?>
      createElement() {
    return _PaymentCredentialsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PaymentCredentialsProvider &&
        other.requestBody == requestBody;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, requestBody.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PaymentCredentialsRef
    on AutoDisposeFutureProviderRef<PaymentCredentialsResponse?> {
  /// The parameter `requestBody` of this provider.
  PaymentCredentialsRequest get requestBody;
}

class _PaymentCredentialsProviderElement
    extends AutoDisposeFutureProviderElement<PaymentCredentialsResponse?>
    with PaymentCredentialsRef {
  _PaymentCredentialsProviderElement(super.provider);

  @override
  PaymentCredentialsRequest get requestBody =>
      (origin as PaymentCredentialsProvider).requestBody;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
