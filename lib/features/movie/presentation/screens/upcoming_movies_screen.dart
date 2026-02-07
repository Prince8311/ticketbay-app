import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/app_bar.dart';
import 'package:ticket_bay/core/shared/widgets/loader.dart';
import 'package:ticket_bay/core/shared/widgets/movie_card.dart';
import 'package:ticket_bay/core/shared/widgets/api_list_widget.dart';
import 'package:ticket_bay/features/movie/presentation/providers/upcoming_movies_provider.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class UpcomingMoviesScreen extends HookConsumerWidget {
  const UpcomingMoviesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final upcomingState = ref.watch(upcomingMoviesProvider);
    final movies = upcomingState.data?.movies ?? [];

    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: secondaryAppBar("Upcoming Movies"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
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

              /* ================= MOVIE GRID ================= */
              Expanded(
                child: Builder(builder: (context) {
                  if (upcomingState.isLoading && movies.isEmpty) {
                    return MovieListLoading();
                  }
                  if (upcomingState.error != null && movies.isEmpty) {
                    return Center(
                      child: Text(
                        upcomingState.error!,
                        style: const TextStyle(color: Colors.red),
                      ),
                    );
                  }
                  return ApiGridWidget(
                    provider: upcomingMoviesProvider,
                    data: upcomingState,
                    pageProvider: upcomingMoviesPageProvider,
                    canLoadMore: canLoadMoreUpcomingMoviesProvider,
                    scrollController: scrollController,
                    emptyCondition: !upcomingState.isLoading && movies.isEmpty,
                    itemCount: movies.length,
                    padding: EdgeInsets.zero,
                    aspectRatio: 0.49,
                    itemBuilder: (context, index) {
                      final movie = movies[index];
                      return MovieCard(
                        posterImage: movie.posterImage ?? '',
                        rating: "4.5",
                        user: "5k",
                        title: movie.movieName ?? '',
                        displayAll: true,
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

class MovieListLoading extends StatelessWidget {
  const MovieListLoading({super.key});

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
              childAspectRatio: 0.49,
            ),
            itemCount: 9,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonLoader(
                    height: 155,
                    width: double.maxFinite,
                  ),
                  SkeletonLoader(
                    height: 15,
                    width: 60,
                    margin: EdgeInsets.only(top: 6),
                  ),
                  SkeletonLoader(
                    height: 30,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(top: 8),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
