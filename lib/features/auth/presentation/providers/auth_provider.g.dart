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

String _$registerHash() => r'48cbec28b3ace54f97ccfbb70ca7d71110ecd791';

/// See also [register].
@ProviderFor(register)
const registerProvider = RegisterFamily();

/// See also [register].
class RegisterFamily extends Family<AsyncValue<ApiResponseModel?>> {
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
class RegisterProvider extends AutoDisposeFutureProvider<ApiResponseModel?> {
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
    FutureOr<ApiResponseModel?> Function(RegisterRef provider) create,
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
  AutoDisposeFutureProviderElement<ApiResponseModel?> createElement() {
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
mixin RegisterRef on AutoDisposeFutureProviderRef<ApiResponseModel?> {
  /// The parameter `requestBody` of this provider.
  RegisterRequestModel get requestBody;
}

class _RegisterProviderElement
    extends AutoDisposeFutureProviderElement<ApiResponseModel?>
    with RegisterRef {
  _RegisterProviderElement(super.provider);

  @override
  RegisterRequestModel get requestBody =>
      (origin as RegisterProvider).requestBody;
}

String _$sendOTPHash() => r'8cba678b2b9765eefe527213c5cffc78bfef622b';

/// See also [sendOTP].
@ProviderFor(sendOTP)
const sendOTPProvider = SendOTPFamily();

/// See also [sendOTP].
class SendOTPFamily extends Family<AsyncValue<ApiResponseModel?>> {
  /// See also [sendOTP].
  const SendOTPFamily();

  /// See also [sendOTP].
  SendOTPProvider call({
    required OTPRequestModel requestBody,
  }) {
    return SendOTPProvider(
      requestBody: requestBody,
    );
  }

  @override
  SendOTPProvider getProviderOverride(
    covariant SendOTPProvider provider,
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
  String? get name => r'sendOTPProvider';
}

/// See also [sendOTP].
class SendOTPProvider extends AutoDisposeFutureProvider<ApiResponseModel?> {
  /// See also [sendOTP].
  SendOTPProvider({
    required OTPRequestModel requestBody,
  }) : this._internal(
          (ref) => sendOTP(
            ref as SendOTPRef,
            requestBody: requestBody,
          ),
          from: sendOTPProvider,
          name: r'sendOTPProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sendOTPHash,
          dependencies: SendOTPFamily._dependencies,
          allTransitiveDependencies: SendOTPFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  SendOTPProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final OTPRequestModel requestBody;

  @override
  Override overrideWith(
    FutureOr<ApiResponseModel?> Function(SendOTPRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SendOTPProvider._internal(
        (ref) => create(ref as SendOTPRef),
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
  AutoDisposeFutureProviderElement<ApiResponseModel?> createElement() {
    return _SendOTPProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SendOTPProvider && other.requestBody == requestBody;
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
mixin SendOTPRef on AutoDisposeFutureProviderRef<ApiResponseModel?> {
  /// The parameter `requestBody` of this provider.
  OTPRequestModel get requestBody;
}

class _SendOTPProviderElement
    extends AutoDisposeFutureProviderElement<ApiResponseModel?>
    with SendOTPRef {
  _SendOTPProviderElement(super.provider);

  @override
  OTPRequestModel get requestBody => (origin as SendOTPProvider).requestBody;
}

String _$verifyOTPHash() => r'1f5790adb995050434130a0d6de1361d1f6776c7';

/// See also [verifyOTP].
@ProviderFor(verifyOTP)
const verifyOTPProvider = VerifyOTPFamily();

/// See also [verifyOTP].
class VerifyOTPFamily extends Family<AsyncValue<ApiResponseModel?>> {
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
class VerifyOTPProvider extends AutoDisposeFutureProvider<ApiResponseModel?> {
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
    FutureOr<ApiResponseModel?> Function(VerifyOTPRef provider) create,
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
  AutoDisposeFutureProviderElement<ApiResponseModel?> createElement() {
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
mixin VerifyOTPRef on AutoDisposeFutureProviderRef<ApiResponseModel?> {
  /// The parameter `requestBody` of this provider.
  OTPVerificationRequestModel get requestBody;
}

class _VerifyOTPProviderElement
    extends AutoDisposeFutureProviderElement<ApiResponseModel?>
    with VerifyOTPRef {
  _VerifyOTPProviderElement(super.provider);

  @override
  OTPVerificationRequestModel get requestBody =>
      (origin as VerifyOTPProvider).requestBody;
}

String _$resetPasswordHash() => r'aec3092ba094a978b2ce39ea65940d32c2bff1b2';

/// See also [resetPassword].
@ProviderFor(resetPassword)
const resetPasswordProvider = ResetPasswordFamily();

/// See also [resetPassword].
class ResetPasswordFamily extends Family<AsyncValue<ApiResponseModel?>> {
  /// See also [resetPassword].
  const ResetPasswordFamily();

  /// See also [resetPassword].
  ResetPasswordProvider call({
    required ResetPasswordModel requestBody,
  }) {
    return ResetPasswordProvider(
      requestBody: requestBody,
    );
  }

  @override
  ResetPasswordProvider getProviderOverride(
    covariant ResetPasswordProvider provider,
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
  String? get name => r'resetPasswordProvider';
}

/// See also [resetPassword].
class ResetPasswordProvider
    extends AutoDisposeFutureProvider<ApiResponseModel?> {
  /// See also [resetPassword].
  ResetPasswordProvider({
    required ResetPasswordModel requestBody,
  }) : this._internal(
          (ref) => resetPassword(
            ref as ResetPasswordRef,
            requestBody: requestBody,
          ),
          from: resetPasswordProvider,
          name: r'resetPasswordProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$resetPasswordHash,
          dependencies: ResetPasswordFamily._dependencies,
          allTransitiveDependencies:
              ResetPasswordFamily._allTransitiveDependencies,
          requestBody: requestBody,
        );

  ResetPasswordProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestBody,
  }) : super.internal();

  final ResetPasswordModel requestBody;

  @override
  Override overrideWith(
    FutureOr<ApiResponseModel?> Function(ResetPasswordRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ResetPasswordProvider._internal(
        (ref) => create(ref as ResetPasswordRef),
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
  AutoDisposeFutureProviderElement<ApiResponseModel?> createElement() {
    return _ResetPasswordProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ResetPasswordProvider && other.requestBody == requestBody;
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
mixin ResetPasswordRef on AutoDisposeFutureProviderRef<ApiResponseModel?> {
  /// The parameter `requestBody` of this provider.
  ResetPasswordModel get requestBody;
}

class _ResetPasswordProviderElement
    extends AutoDisposeFutureProviderElement<ApiResponseModel?>
    with ResetPasswordRef {
  _ResetPasswordProviderElement(super.provider);

  @override
  ResetPasswordModel get requestBody =>
      (origin as ResetPasswordProvider).requestBody;
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
String _$logoutHash() => r'8c0d795895cbf92c7fc2ae2324242a9e55f6272a';

/// See also [logout].
@ProviderFor(logout)
final logoutProvider = AutoDisposeFutureProvider<ApiResponseModel?>.internal(
  logout,
  name: r'logoutProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$logoutHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LogoutRef = AutoDisposeFutureProviderRef<ApiResponseModel?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
