import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/router/app_router.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/app_bar.dart';
import 'package:ticket_bay/core/shared/widgets/banner_carousel.dart';
import 'package:ticket_bay/core/shared/widgets/fancy_heading.dart';
import 'package:ticket_bay/core/shared/widgets/loader.dart';
import 'package:ticket_bay/core/shared/widgets/movie_card.dart';
import 'package:ticket_bay/core/shared/widgets/ticket_card.dart';
import 'package:ticket_bay/features/auth/presentation/providers/auth_provider.dart';
import 'package:ticket_bay/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:ticket_bay/features/home/presentation/providers/location_provider.dart';
import 'package:ticket_bay/features/movie/presentation/providers/coming_soon_movies_provider.dart';
import 'package:ticket_bay/features/movie/presentation/providers/recommended_movies_provider.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = ref.watch(locationProvider);
    final authToken = ref.watch(authTokenProvider);
    final recommendedState = ref.watch(recommendedMoviesProvider);
    final comingSoonState = ref.watch(comingSoonMoviesProvider);
    final userAsync = authToken != null ? ref.watch(userDetailsProvider) : null;

    final userName = userAsync?.maybeWhen(
      data: (data) {
        final fullName = data?.name;
        if (fullName == null || fullName.trim().isEmpty) return null;

        return fullName.trim().split(' ').first;
      },
      orElse: () => null,
    );

    final recommendedMovies =
        recommendedState.data?.movies?.take(8).toList() ?? [];
    final comingSoonMovies =
        comingSoonState.data?.movies?.take(8).toList() ?? [];

    /* ================= LOCATION CHANGE ================= */
    useEffect(() {
      if (location == null || location.isEmpty) return null;

      Future.microtask(() {
        ref.read(recommendedMovieLocationProvider.notifier).state = location;
        ref.read(comingSoonMovieLocationProvider.notifier).state = location;

        ref.read(recommendedMoviesProvider.notifier).loadData();
        ref.read(comingSoonMoviesProvider.notifier).loadData();
      });

      return null;
    }, [location]);

    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: primaryAppBar(userName),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /* ================= BANNER ================= */
              BannerCarousel(
                data: [
                  BannerItemWidget(
                    image: Assets.images.banner1,
                    title: "Special Discount!",
                    subtitle: "Enjoy 20% off on selected theaters.",
                  ),
                  BannerItemWidget(
                    image: Assets.images.banner2,
                    title: "New Releases",
                    subtitle: "Catch the latest blockbuster movies now.",
                  ),
                ],
              )
                  .animate()
                  .fadeIn(duration: 700.milliseconds)
                  .slideY(begin: 0.1, end: 0),

              /* ================= BOOKED TICKETS ================= */
              Container(
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 18),
                decoration: BoxDecoration(
                  color: ColorName.lightBackground3,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FancyHeading(
                          title: "Upcoming",
                          subtitle: "Bookings",
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(0, 0),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "See More",
                                style: TextStyle(
                                  color: ColorName.black1,
                                  decoration: TextDecoration.underline,
                                  fontSize: 13,
                                  fontFamily: FontFamily.poppins,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 2),
                              Icon(
                                Icons.keyboard_double_arrow_right,
                                size: 20,
                                color: ColorName.black1,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 105,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return TicketCard(
                            movieName: "Avatar: The Way of Water",
                            date: "25 Oct, 2025",
                            time: "8:30 PM",
                            seatClass: "Premium",
                            seats: "A-1, A-2, A-3",
                            ticketId: "TKB894571",
                            image: Assets.images.movie1,
                            isUpcoming: true,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => UpcomingMoviesRoute().push(context),
                child: Container(
                  // margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  padding: const EdgeInsets.fromLTRB(20, 14, 16, 14),
                  decoration: BoxDecoration(
                    color: ColorName.redColor1,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Explore upcoming shows',
                        style: TextStyle(
                          fontSize: 13,
                          color: ColorName.white,
                          fontFamily: FontFamily.poppins,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_double_arrow_right,
                        size: 19,
                        color: ColorName.white,
                      )
                    ],
                  ),
                ),
              ),

              /* ================= RECOMMENDED ================= */
              if (recommendedMovies.isNotEmpty)
                Column(
                  children: [
                    _RecommendedSection(
                      movies: recommendedMovies,
                      isLoading: recommendedState.isLoading,
                    ),
                  ],
                ),

              /* ================= COMING SOON (WITH DIVIDER) ================= */
              if (comingSoonMovies.isNotEmpty)
                Column(
                  children: [
                    const _GradientDivider(),
                    _ComingSoonSection(
                      movies: comingSoonMovies,
                      isLoading: comingSoonState.isLoading,
                    ),
                  ],
                ),

              /* ================= NO MOVIES ================= */
              if (recommendedMovies.isEmpty && comingSoonMovies.isEmpty)
                Column(
                  children: [
                    Gap(30.h),
                    Assets.images.noShow.svg(width: 220),
                    Gap(14.h),
                    Text(
                      'No show available in this location',
                      style: TextStyle(
                        fontSize: 13.5,
                        fontFamily: FontFamily.poppins,
                        color: ColorName.black2,
                      ),
                    ),
                    Gap(25.h),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RecommendedSection extends StatelessWidget {
  final List movies;
  final bool isLoading;

  const _RecommendedSection({
    required this.movies,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const FancyHeading(
                title: "Recommended",
                subtitle: "Movies",
              ),
              const Spacer(),
              TextButton(
                onPressed: () => MoviesRoute().go(context),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(0, 0),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Row(
                  children: [
                    Text(
                      "See More",
                      style: TextStyle(
                        color: ColorName.black1,
                        decoration: TextDecoration.underline,
                        fontSize: 13,
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.keyboard_double_arrow_right,
                      size: 20,
                      color: ColorName.black1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 215,
            child: isLoading
                ? const MovieListLoading()
                : movies.isEmpty
                    ? const Center(
                        child: Text("No recommended movies"),
                      )
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: movies.length,
                        itemBuilder: (_, index) {
                          final movie = movies[index];
                          return MovieCard(
                            posterImage: movie.posterImage ?? '',
                            rating: "4.5",
                            user: "5k",
                            title: movie.movieName ?? '',
                          );
                        },
                      ),
          ),
        ],
      ),
    );
  }
}

class _ComingSoonSection extends StatelessWidget {
  final List movies;
  final bool isLoading;

  const _ComingSoonSection({
    required this.movies,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const FancyHeading(
                title: "Coming",
                subtitle: "Soon",
              ),
              const Spacer(),
              TextButton(
                onPressed: () => ComingSoonMoviesRoute().go(context),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(0, 0),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Row(
                  children: const [
                    Text(
                      "See More",
                      style: TextStyle(
                        color: ColorName.black1,
                        decoration: TextDecoration.underline,
                        fontSize: 13,
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.keyboard_double_arrow_right,
                      size: 20,
                      color: ColorName.black1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(20.h),
          SizedBox(
            height: 215,
            child: isLoading
                ? const MovieListLoading()
                : movies.isEmpty
                    ? const Center(child: Text("No coming soon movies"))
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: movies.length,
                        itemBuilder: (_, index) {
                          final movie = movies[index];
                          return MovieCard(
                            posterImage: movie.posterImage ?? '',
                            rating: "4.5",
                            user: "5k",
                            title: movie.movieName ?? '',
                          );
                        },
                      ),
          ),
        ],
      ),
    );
  }
}

class _GradientDivider extends StatelessWidget {
  const _GradientDivider();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            ColorName.transparent,
            ColorName.borderColor1,
            ColorName.transparent,
          ],
        ),
      ),
    );
  }
}

class MovieListLoading extends StatelessWidget {
  const MovieListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkeletonLoader(
              width: 110,
              height: 155,
            ),
            SkeletonLoader(
              width: 60,
              height: 15,
              margin: EdgeInsets.only(top: 6),
            ),
            SkeletonLoader(
              width: 110,
              height: 30,
              margin: EdgeInsets.only(top: 8),
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkeletonLoader(
              width: 110,
              height: 155,
            ),
            SkeletonLoader(
              width: 60,
              height: 15,
              margin: EdgeInsets.only(top: 6),
            ),
            SkeletonLoader(
              width: 110,
              height: 30,
              margin: EdgeInsets.only(top: 8),
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkeletonLoader(
              width: 110,
              height: 155,
            ),
            SkeletonLoader(
              width: 60,
              height: 15,
              margin: EdgeInsets.only(top: 6),
            ),
            SkeletonLoader(
              width: 110,
              height: 30,
              margin: EdgeInsets.only(top: 8),
            ),
          ],
        ),
      ],
    );
  }
}
