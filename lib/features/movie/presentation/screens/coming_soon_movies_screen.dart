import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/app_bar.dart';
import 'package:ticket_bay/core/shared/widgets/movie_card.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class ComingSoonMoviesScreen extends HookConsumerWidget {
  const ComingSoonMoviesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: commonAppBar("Coming Soon"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Gap(20.h),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: ColorName.borderColor,
                    width: 1,
                  ),
                ),
                height: 44,
                child: Row(
                  children: [
                    const Icon(Icons.search, color: ColorName.black3),
                    Gap(12.w),
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                          fontSize: 13,
                          color: ColorName.black1,
                          fontFamily: FontFamily.poppins,
                        ),
                        cursorColor: ColorName.themeColor,
                        decoration: const InputDecoration(
                          hintText: 'Search movie here...',
                          hintStyle: TextStyle(
                            fontSize: 13,
                            fontFamily: FontFamily.poppins,
                            color: ColorName.black3,
                          ),
                          border: InputBorder.none,
                          isDense: true,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Gap(18.h),
              // Recommended Movies
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, // Two items per row
                            crossAxisSpacing: 12.0,
                            mainAxisSpacing: 0,
                            childAspectRatio: 0.49,
                          ),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return MovieCard(
                              imageAsset: Assets.images.movie1,
                              rating: "4.${index % 5}",
                              user: "5k",
                              title: "Avatar: The Way of Water",
                              displayAll: true,
                            );
                          })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
