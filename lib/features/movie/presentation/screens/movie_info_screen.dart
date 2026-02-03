import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/gen/colors.gen.dart';

class MovieInfoScreen extends HookConsumerWidget {
  const MovieInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.white,
    );
  }
}
