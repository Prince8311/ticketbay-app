// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginHash() => r'6de872c1aff293c5220c62628cbbf7a3259a5f5c';

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

/// See also [login].
@ProviderFor(login)
const loginProvider = LoginFamily();

/// See also [login].
class LoginFamily extends Family<AsyncValue<LoginResponseModel?>> {
  /// See also [login].
  const LoginFamily();

  /// See also [login].
  LoginProvider call({
    required LoginRequestModel requestBody,
  }) {
    return LoginProvider(
      requestBody: requestBody,
    );
  }

  @override
  LoginProvider getProviderOverride(
    covariant LoginProvider provider,
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
  String? get name => r'loginProvider';
}

/// See also [login].
class LoginProvider extends AutoDisposeFutureProvider<LoginResponseModel?> {
  /// See also [login].
  LoginProvider({
    required LoginRequestModel requestBody,
  }) : this._internal(
          (ref) => login(
            ref as LoginRef,
            requestBody: requestBody,
          ),
          from: loginProvider,
          name: r'loginProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginHash,
          dependencies: LoginFamily._dependencies,
          allTransitiveDependencies: LoginFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  LoginProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final LoginRequestModel requestBody;

  @override
  Override overrideWith(
    FutureOr<LoginResponseModel?> Function(LoginRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoginProvider._internal(
        (ref) => create(ref as LoginRef),
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
  AutoDisposeFutureProviderElement<LoginResponseModel?> createElement() {
    return _LoginProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginProvider && other.requestBody == requestBody;
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
mixin LoginRef on AutoDisposeFutureProviderRef<LoginResponseModel?> {
  /// The parameter `requestBody` of this provider.
  LoginRequestModel get requestBody;
}

class _LoginProviderElement
    extends AutoDisposeFutureProviderElement<LoginResponseModel?>
    with LoginRef {
  _LoginProviderElement(super.provider);

  @override
  LoginRequestModel get requestBody => (origin as LoginProvider).requestBody;
}

String _$registerHash() => r'65f761bc414a45ed299b2affa03984d19ad51d61';

/// See also [register].
@ProviderFor(register)
const registerProvider = RegisterFamily();

/// See also [register].
class RegisterFamily extends Family<AsyncValue<RegisterResponseModel?>> {
  /// See also [register].
  const RegisterFamily();

  /// See also [register].
  RegisterProvider call({
    required RegisterRequestModel requestBody,
  }) {
    return RegisterProvider(
      requestBody: requestBody,
    );
  }

  @override
  RegisterProvider getProviderOverride(
    covariant RegisterProvider provider,
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
  String? get name => r'registerProvider';
}

/// See also [register].
class RegisterProvider
    extends AutoDisposeFutureProvider<RegisterResponseModel?> {
  /// See also [register].
  RegisterProvider({
    required RegisterRequestModel requestBody,
  }) : this._internal(
          (ref) => register(
            ref as RegisterRef,
            requestBody: requestBody,
          ),
          from: registerProvider,
          name: r'registerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$registerHash,
          dependencies: RegisterFamily._dependencies,
          allTransitiveDependencies: RegisterFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  RegisterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final RegisterRequestModel requestBody;

  @override
  Override overrideWith(
    FutureOr<RegisterResponseModel?> Function(RegisterRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RegisterProvider._internal(
        (ref) => create(ref as RegisterRef),
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
  AutoDisposeFutureProviderElement<RegisterResponseModel?> createElement() {
    return _RegisterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RegisterProvider && other.requestBody == requestBody;
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
mixin RegisterRef on AutoDisposeFutureProviderRef<RegisterResponseModel?> {
  /// The parameter `requestBody` of this provider.
  RegisterRequestModel get requestBody;
}

class _RegisterProviderElement
    extends AutoDisposeFutureProviderElement<RegisterResponseModel?>
    with RegisterRef {
  _RegisterProviderElement(super.provider);

  @override
  RegisterRequestModel get requestBody =>
      (origin as RegisterProvider).requestBody;
}

String _$verifyOTPHash() => r'90f139ec3b4ae04825a01c786b56d1c0e6ad7eec';

/// See also [verifyOTP].
@ProviderFor(verifyOTP)
const verifyOTPProvider = VerifyOTPFamily();

/// See also [verifyOTP].
class VerifyOTPFamily
    extends Family<AsyncValue<OTPVerificationResponseModel?>> {
  /// See also [verifyOTP].
  const VerifyOTPFamily();

  /// See also [verifyOTP].
  VerifyOTPProvider call({
    required OTPVerificationRequestModel requestBody,
  }) {
    return VerifyOTPProvider(
      requestBody: requestBody,
    );
  }

  @override
  VerifyOTPProvider getProviderOverride(
    covariant VerifyOTPProvider provider,
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
  String? get name => r'verifyOTPProvider';
}

/// See also [verifyOTP].
class VerifyOTPProvider
    extends AutoDisposeFutureProvider<OTPVerificationResponseModel?> {
  /// See also [verifyOTP].
  VerifyOTPProvider({
    required OTPVerificationRequestModel requestBody,
  }) : this._internal(
          (ref) => verifyOTP(
            ref as VerifyOTPRef,
            requestBody: requestBody,
          ),
          from: verifyOTPProvider,
          name: r'verifyOTPProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$verifyOTPHash,
          dependencies: VerifyOTPFamily._dependencies,
          allTransitiveDependencies: VerifyOTPFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  VerifyOTPProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final OTPVerificationRequestModel requestBody;

  @override
  Override overrideWith(
    FutureOr<OTPVerificationResponseModel?> Function(VerifyOTPRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VerifyOTPProvider._internal(
        (ref) => create(ref as VerifyOTPRef),
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
  AutoDisposeFutureProviderElement<OTPVerificationResponseModel?>
      createElement() {
    return _VerifyOTPProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VerifyOTPProvider && other.requestBody == requestBody;
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
mixin VerifyOTPRef
    on AutoDisposeFutureProviderRef<OTPVerificationResponseModel?> {
  /// The parameter `requestBody` of this provider.
  OTPVerificationRequestModel get requestBody;
}

class _VerifyOTPProviderElement
    extends AutoDisposeFutureProviderElement<OTPVerificationResponseModel?>
    with VerifyOTPRef {
  _VerifyOTPProviderElement(super.provider);

  @override
  OTPVerificationRequestModel get requestBody =>
      (origin as VerifyOTPProvider).requestBody;
}

String _$userDetailsHash() => r'de80a7682815857703379fe1167009449300fa3c';

/// See also [userDetails].
@ProviderFor(userDetails)
final userDetailsProvider = AutoDisposeFutureProvider<UserData?>.internal(
  userDetails,
  name: r'userDetailsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userDetailsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserDetailsRef = AutoDisposeFutureProviderRef<UserData?>;
String _$savedUserHash() => r'53067a6ba6194118b33b6936bfc940e481094470';

/// See also [savedUser].
@ProviderFor(savedUser)
final savedUserProvider = AutoDisposeFutureProvider<UserData?>.internal(
  savedUser,
  name: r'savedUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$savedUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SavedUserRef = AutoDisposeFutureProviderRef<UserData?>;
String _$logoutHash() => r'74231281e587ae93ebd1aca4edd2c7825ea3403c';

/// See also [logout].
@ProviderFor(logout)
final logoutProvider = AutoDisposeFutureProvider<LogoutResponseModel?>.internal(
  logout,
  name: r'logoutProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$logoutHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LogoutRef = AutoDisposeFutureProviderRef<LogoutResponseModel?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
