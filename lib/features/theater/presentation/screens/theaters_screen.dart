import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/router/app_router.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/api_list_widget.dart';
import 'package:ticket_bay/core/shared/widgets/app_bar.dart';
import 'package:ticket_bay/core/shared/widgets/loader.dart';
import 'package:ticket_bay/core/shared/widgets/theater_card.dart';
import 'package:ticket_bay/features/home/presentation/providers/location_provider.dart';
import 'package:ticket_bay/features/theater/domain/models/theaters_model.dart';
import 'package:ticket_bay/features/theater/presentation/providers/theater_filter_provider.dart';
import 'package:ticket_bay/features/theater/presentation/providers/theaters_provider.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class TheatersScreen extends HookConsumerWidget {
  const TheatersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = ref.watch(locationProvider);
    final scrollController = useScrollController();
    final theatersState = ref.watch(theatersProvider);
    final theaters = theatersState.data?.theaters ?? [];

    /* ================= LOCATION CHANGE ================= */
    useEffect(() {
      if (location == null || location.isEmpty) return null;

      Future.microtask(() {
        ref.read(theatersLocationProvider.notifier).state = location;
        ref.read(theatersProvider.notifier).loadData();
      });

      return null;
    }, [location]);

    void _showLanguageFormats(TheaterModel theater) {
      showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        isScrollControlled: true,
        backgroundColor: ColorName.white,
        builder: (ctx) {
          return HookConsumer(builder: (context, ref, _) {
            final languageFormatsAsync = ref.watch(
              getTheaterLanguageFormatsProvider(
                theaterName: theater.name ?? '',
              ),
            );

            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(ctx).viewInsets.bottom,
              ),
              child: FractionallySizedBox(
                heightFactor: 0.45,
                widthFactor: 1,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 5,
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: ColorName.black3.withAlpha(120),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      Gap(10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 70,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: ColorName.black3.withAlpha(255),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              Gap(3.h),
                              Container(
                                width: 50,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: ColorName.black3.withAlpha(255),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ],
                          ),
                          Gap(6.w),
                          Text(
                            "Select language & format",
                            style: TextStyle(
                              color: ColorName.black1,
                              fontSize: 14,
                              fontFamily: FontFamily.poppins,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Gap(6.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 70,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: ColorName.black3.withAlpha(255),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              Gap(3.h),
                              Container(
                                width: 50,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: ColorName.black3.withAlpha(255),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Gap(15.h),
                      Expanded(
                        child: languageFormatsAsync.when(
                          loading: () => const Center(
                              child: TheaterLanguageFormatsLoading()),
                          error: (e, _) =>
                              const Center(child: Text('Something went wrong')),
                          data: (languages) {
                            if (languages == null || languages.isEmpty) {
                              return const Center(
                                child: Text('No formats available'),
                              );
                            }

                            return ListView.builder(
                              itemCount: languages.length,
                              itemBuilder: (context, index) {
                                final item = languages[index];

                                return Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.maxFinite,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 25),
                                        decoration: BoxDecoration(
                                          color: ColorName.lightBackground3,
                                        ),
                                        child: Text(
                                          item.language ?? '-',
                                          style: TextStyle(
                                            color: ColorName.black1,
                                            fontSize: 14,
                                            fontFamily: FontFamily.poppins,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 20),
                                        child: Wrap(
                                          spacing: 8,
                                          runSpacing: 8,
                                          children: (item.formats ?? [])
                                              .map((format) {
                                            return GestureDetector(
                                              onTap: () {
                                                context.pop();
                                                TheaterInfoRoute()
                                                    .push(context);
                                              },
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15,
                                                        vertical: 5),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: ColorName
                                                          .borderColor),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                child: Text(
                                                  format,
                                                  style: TextStyle(
                                                    color: ColorName.black2,
                                                    fontSize: 13,
                                                    fontFamily:
                                                        FontFamily.poppins,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          });
        },
      );
    }

    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: commonAppBar("Theaters"),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20.h),

              /* ================= SEARCH BAR ================= */
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
                          hintText: 'Search theaters here...',
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
              Gap(35.h),

              /* ================= THEATER GRID ================= */
              Expanded(
                child: Builder(builder: (context) {
                  if (theatersState.isLoading && theaters.isEmpty) {
                    return TheaterListLoading();
                  }
                  if (theatersState.error != null && theaters.isEmpty) {
                    return Center(
                      child: Text(
                        theatersState.error!,
                        style: const TextStyle(color: Colors.red),
                      ),
                    );
                  }
                  return ApiListWidget(
                    provider: theatersProvider,
                    data: theatersState,
                    pageProvider: theatersPageProvider,
                    canLoadMore: canLoadMoretheatersProvider,
                    scrollController: scrollController,
                    emptyCondition:
                        !theatersState.isLoading && theaters.isEmpty,
                    itemCount: theaters.length,
                    padding: EdgeInsets.zero,
                    aspectRatio: 0.78,
                    itemBuilder: (context, index) {
                      final theater = theaters[index];
                      return GestureDetector(
                        onTap: () {
                          _showLanguageFormats(theater);
                        },
                        child: TheaterCard(
                          image: Assets.images.theater,
                          name: theater.name ?? '',
                        ),
                      );
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TheaterListLoading extends StatelessWidget {
  const TheaterListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Two items per row
              crossAxisSpacing: 14.0,
              mainAxisSpacing: 0,
              childAspectRatio: 0.75,
            ),
            itemCount: 12,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonLoader(
                    height: 80,
                    width: double.maxFinite,
                  ),
                  SkeletonLoader(
                    height: 15,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(top: 8),
                  ),
                  SkeletonLoader(
                    height: 15,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(top: 5),
                  ),
                ],
              );
            }),
      ),
    );
  }
}

class TheaterLanguageFormatsLoading extends StatelessWidget {
  const TheaterLanguageFormatsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonLoader(height: 45, width: double.maxFinite),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      SkeletonLoader(
                        height: 30,
                        width: 50,
                      ),
                      SkeletonLoader(
                        height: 30,
                        width: 50,
                      ),
                      SkeletonLoader(
                        height: 30,
                        width: 50,
                      ),
                      SkeletonLoader(
                        height: 30,
                        width: 50,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonLoader(height: 45, width: double.maxFinite),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      SkeletonLoader(
                        height: 30,
                        width: 50,
                      ),
                      SkeletonLoader(
                        height: 30,
                        width: 50,
                      ),
                      SkeletonLoader(
                        height: 30,
                        width: 50,
                      ),
                      SkeletonLoader(
                        height: 30,
                        width: 50,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonLoader(height: 45, width: double.maxFinite),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      SkeletonLoader(
                        height: 30,
                        width: 50,
                      ),
                      SkeletonLoader(
                        height: 30,
                        width: 50,
                      ),
                      SkeletonLoader(
                        height: 30,
                        width: 50,
                      ),
                      SkeletonLoader(
                        height: 30,
                        width: 50,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
