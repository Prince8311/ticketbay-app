/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Movie-1.jpg
  AssetGenImage get movie1 => const AssetGenImage('assets/images/Movie-1.jpg');

  /// File path: assets/images/actor.jpeg
  AssetGenImage get actor => const AssetGenImage('assets/images/actor.jpeg');

  /// File path: assets/images/auto-rikshaw.jpg
  AssetGenImage get autoRikshaw => const AssetGenImage('assets/images/auto-rikshaw.jpg');

  /// File path: assets/images/banner-1.jpeg
  AssetGenImage get banner1 => const AssetGenImage('assets/images/banner-1.jpeg');

  /// File path: assets/images/banner-2.jpeg
  AssetGenImage get banner2 => const AssetGenImage('assets/images/banner-2.jpeg');

  /// File path: assets/images/banner-3.jpeg
  AssetGenImage get banner3 => const AssetGenImage('assets/images/banner-3.jpeg');

  /// File path: assets/images/bike.jpg
  AssetGenImage get bike => const AssetGenImage('assets/images/bike.jpg');

  /// File path: assets/images/bus.jpg
  AssetGenImage get bus => const AssetGenImage('assets/images/bus.jpg');

  /// File path: assets/images/cancel-tag.png
  AssetGenImage get cancelTag => const AssetGenImage('assets/images/cancel-tag.png');

  /// File path: assets/images/city.svg
  SvgGenImage get city => const SvgGenImage('assets/images/city.svg');

  /// File path: assets/images/cycle.jpg
  AssetGenImage get cycle => const AssetGenImage('assets/images/cycle.jpg');

  /// File path: assets/images/director.jpeg
  AssetGenImage get director => const AssetGenImage('assets/images/director.jpeg');

  /// File path: assets/images/error.gif
  AssetGenImage get error => const AssetGenImage('assets/images/error.gif');

  /// File path: assets/images/forgot-password-icon.svg
  SvgGenImage get forgotPasswordIcon => const SvgGenImage('assets/images/forgot-password-icon.svg');

  /// File path: assets/images/large-car.jpg
  AssetGenImage get largeCar => const AssetGenImage('assets/images/large-car.jpg');

  /// File path: assets/images/loader.svg
  SvgGenImage get loader => const SvgGenImage('assets/images/loader.svg');

  /// File path: assets/images/login-icon.svg
  SvgGenImage get loginIcon => const SvgGenImage('assets/images/login-icon.svg');

  /// File path: assets/images/no-show.svg
  SvgGenImage get noShow => const SvgGenImage('assets/images/no-show.svg');

  /// File path: assets/images/profile-image.png
  AssetGenImage get profileImage => const AssetGenImage('assets/images/profile-image.png');

  /// File path: assets/images/register-icon.svg
  SvgGenImage get registerIcon => const SvgGenImage('assets/images/register-icon.svg');

  /// File path: assets/images/slide-1.jpeg
  AssetGenImage get slide1 => const AssetGenImage('assets/images/slide-1.jpeg');

  /// File path: assets/images/slide-2.jpeg
  AssetGenImage get slide2 => const AssetGenImage('assets/images/slide-2.jpeg');

  /// File path: assets/images/slide-3.jpeg
  AssetGenImage get slide3 => const AssetGenImage('assets/images/slide-3.jpeg');

  /// File path: assets/images/slide-5.jpeg
  AssetGenImage get slide5 => const AssetGenImage('assets/images/slide-5.jpeg');

  /// File path: assets/images/small-car.jpg
  AssetGenImage get smallCar => const AssetGenImage('assets/images/small-car.jpg');

  /// File path: assets/images/splash_logo.gif
  AssetGenImage get splashLogo => const AssetGenImage('assets/images/splash_logo.gif');

  /// File path: assets/images/success.gif
  AssetGenImage get success => const AssetGenImage('assets/images/success.gif');

  /// File path: assets/images/theater-screen.svg
  SvgGenImage get theaterScreen => const SvgGenImage('assets/images/theater-screen.svg');

  /// File path: assets/images/theater.png
  AssetGenImage get theater => const AssetGenImage('assets/images/theater.png');

  /// File path: assets/images/warning.gif
  AssetGenImage get warning => const AssetGenImage('assets/images/warning.gif');

  /// List of all assets
  List<dynamic> get values => [
        movie1,
        actor,
        autoRikshaw,
        banner1,
        banner2,
        banner3,
        bike,
        bus,
        cancelTag,
        city,
        cycle,
        director,
        error,
        forgotPasswordIcon,
        largeCar,
        loader,
        loginIcon,
        noShow,
        profileImage,
        registerIcon,
        slide1,
        slide2,
        slide3,
        slide5,
        smallCar,
        splashLogo,
        success,
        theaterScreen,
        theater,
        warning
      ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
