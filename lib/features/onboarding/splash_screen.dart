import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/router/app_router.dart';
import 'package:ticket_bay/core/shared/helpers/local_storage.dart';
import 'package:ticket_bay/gen/assets.gen.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkOnboarding();
  }

  Future<void> _checkOnboarding() async {
    await Future.delayed(const Duration(milliseconds: 8400));
    final localDb = await ref.read(localStorageProvider.future);
    final isOpened = await localDb.readBool("alreadyOpened") ?? false;

    if (!mounted) return;

    if (isOpened) {
      HomeRoute().go(context);
    } else {
      WelcomeRoute().go(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Assets.images.splashLogo.image(
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
