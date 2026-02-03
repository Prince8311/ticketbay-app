import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class AppRefreshIndicator<T> extends ConsumerWidget {
  const AppRefreshIndicator({
    this.color = ColorName.themeColor,
    required this.provider,
    required this.child,
    this.indicatorType = AppRefreshIndicatorType.liquid,
    this.onRefreshCalled,
    super.key,
  });
  final Refreshable<T> provider;
  final Widget child;
  final Color? color;
  final AppRefreshIndicatorType indicatorType;
  final void Function()? onRefreshCalled;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    onRefresh() async => ref.refresh(provider);
    return indicatorType == AppRefreshIndicatorType.liquid
        ? LiquidPullToRefresh(
            onRefresh: () {
              onRefreshCalled?.call();
              return onRefresh();
            },
            springAnimationDurationInMilliseconds: 500,
            color: color,
            child: child,
          )
        : RefreshIndicator.adaptive(
            onRefresh: () {
              onRefreshCalled?.call();
              return onRefresh();
            },
            color: color,
            backgroundColor: color,
            child: child,
          );
  }
}

enum AppRefreshIndicatorType { liquid, normal }

class AppRefreshButton<T> extends ConsumerWidget {
  const AppRefreshButton({
    super.key,
    required this.provider,
    required this.onRefreshCalled,
  });

  final Refreshable<T> provider;

  final void Function()? onRefreshCalled;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: () async {
        onRefreshCalled?.call();
        // ignore: unused_result
        ref.refresh(provider);
      },
      child: Text(
        "Refresh",
        style: TextStyle(color: ColorName.themeColor),
      ),
    );
  }
}
