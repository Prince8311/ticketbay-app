import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/app_bar.dart';
import 'package:ticket_bay/core/shared/widgets/review_card.dart';
import 'package:ticket_bay/gen/colors.gen.dart';

class ReviewsScreen extends HookConsumerWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: secondaryAppBar("All Reviews"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(10.h),
              ...List.generate(8, (index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                  child: ReviewCard(
                    displayAll: true,
                  ),
                );
              }),
              Gap(10.h),
            ],
          ),
        ),
      ),
    );
  }
}
