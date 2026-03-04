import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/api/end_points.dart';
import 'package:ticket_bay/core/router/app_router.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/app_bar.dart';
import 'package:ticket_bay/core/shared/widgets/cast_crew_card.dart';
import 'package:ticket_bay/core/shared/widgets/expandable_text.dart';
import 'package:ticket_bay/core/shared/widgets/loader.dart';
import 'package:ticket_bay/core/shared/widgets/review_card.dart';
import 'package:ticket_bay/features/home/presentation/providers/location_provider.dart';
import 'package:ticket_bay/features/movie/domain/models/movies_model.dart';
import 'package:ticket_bay/features/movie/presentation/providers/movie_details_provider.dart';
import 'package:ticket_bay/features/movie/presentation/providers/movie_filter_provider.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieDetailsScreen extends HookConsumerWidget {
  const MovieDetailsScreen({
    super.key,
    required this.movieName,
    this.isUpcoming = false,
  });
  final String movieName;
  final bool isUpcoming;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLocation = ref.watch(locationProvider);
    String? movieTotalTime;
    final movieAsync = (selectedLocation != null)
        ? ref.watch(
            movieDetailsProvider(
              location: selectedLocation,
              movieName: movieName,
            ),
          )
        : const AsyncValue<MovieDetailsModel?>.data(null);

    void _showLanguageFormats() {
      showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        isScrollControlled: true,
        backgroundColor: ColorName.white,
        builder: (ctx) {
          return HookConsumer(builder: (context, ref, _) {
            final languageFormatsAsync = ref.watch(
              getMovieLanguageFormatsProvider(
                movieName: movieName,
                location: selectedLocation!,
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
                              child: MovieLanguageFormatsLoading()),
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
                                                final movie = MovieInfoData(
                                                  name: movieName,
                                                  totalTime: movieTotalTime,
                                                  language: item.language,
                                                  format: format,
                                                );
                                                context.pop();
                                                MovieInfoRoute(
                                                        moviedata: json.encode(
                                                            movie.toJson()))
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

    Future<void> _launchURL(String? iframe) async {
      if (iframe == null || iframe.isEmpty) return;

      final match = RegExp(r'src="([^"]+)"').firstMatch(iframe);
      if (match == null) return;

      final embedUrl = match.group(1)!;
      final uri = Uri.parse(embedUrl);

      final videoId =
          uri.pathSegments.isNotEmpty ? uri.pathSegments.last : null;

      if (videoId == null) return;

      final youtubeUri = Uri.parse('https://www.youtube.com/watch?v=$videoId');

      await launchUrl(
        youtubeUri,
        mode: LaunchMode.externalApplication,
      );
    }

    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: secondaryAppBar("Movie Details"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* ================= MOVIE DETAILS ================= */
              movieAsync.when(
                loading: () => MovieDetailstLoading(),
                error: (e, _) => Center(child: Text(e.toString())),
                data: (movie) {
                  if (movie == null) {
                    return const Center(child: Text('Select a location'));
                  }
                  movieTotalTime = movie.totalTime;
                  return Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.fromLTRB(16, 18, 18, 18),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              ColorName.lightBackground1,
                              ColorName.lightBackground3
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        '${Endpoints.moviePosterURL}/${movie.posterImage}',
                                        width: 90,
                                        height: 130,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: GestureDetector(
                                        onTap: () {
                                          _launchURL(movie.trailer);
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              gradient: RadialGradient(
                                                center: Alignment.center,
                                                radius: 0.8,
                                                colors: [
                                                  Colors.black.withAlpha(
                                                      170), // center darker
                                                  Colors.black.withAlpha(
                                                      0), // edges transparent
                                                ],
                                                stops: const [0.0, 1.0],
                                              )),
                                          child: Center(
                                            child: Icon(
                                              Icons.play_circle_fill,
                                              size: 32,
                                              color:
                                                  Colors.white.withAlpha(170),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Gap(18.w),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Gap(4.h),
                                      Text(
                                        movie.name ?? 'Unknown Movie',
                                        style: const TextStyle(
                                            fontSize: 14.5,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: FontFamily.poppins,
                                            color: ColorName.black1,
                                            fontStyle: FontStyle.italic),
                                      ),
                                      Gap(8.h),
                                      Row(
                                        children: [
                                          Text(
                                            "4.1",
                                            style: const TextStyle(
                                              fontSize: 13,
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w500,
                                              color: ColorName.black1,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Gap(2.w),
                                          const Icon(Icons.star,
                                              size: 14,
                                              color: ColorName.yellowColor),
                                          Text(
                                            " - [5k ratings | 1500 reviews]",
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w500,
                                              color: ColorName.black1,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                      Gap(4.h),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            movie.ageCategory ?? '',
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: ColorName.black1,
                                            ),
                                          ),
                                          Gap(8.w),
                                          Icon(
                                            Icons.circle,
                                            size: 5,
                                            color: ColorName.black2,
                                          ),
                                          Gap(8.w),
                                          Text(
                                            movie.totalTime ?? '',
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: ColorName.black1,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Gap(4.h),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            movie.releaseDate != null
                                                ? "Released on:"
                                                : 'Release:',
                                            style: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: ColorName.black,
                                                fontStyle: FontStyle.italic),
                                          ),
                                          Gap(3.w),
                                          Text(
                                            (movie.releaseDate != null &&
                                                    movie.releaseDate!
                                                        .isNotEmpty)
                                                ? movie.releaseDate!
                                                : (movie.releaseYear ?? ''),
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: ColorName.black2,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Gap(8.h),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.share,
                                              size: 15,
                                              color: ColorName.black1,
                                            ),
                                            Gap(5.w),
                                            Text(
                                              'Share now',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: ColorName.black1,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: FontFamily.poppins,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: ColorName.yellowColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: Text(
                                  'Give Ratings & Review',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: ColorName.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: FontFamily.poppins,
                                  ),
                                ),
                              ),
                            ),
                            Gap(15.h),
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: (movie.availableFormats ?? '')
                                  .split(',')
                                  .where((e) => e.trim().isNotEmpty)
                                  .map(
                                    (format) => MovieTags(label: format.trim()),
                                  )
                                  .toList(),
                            ),
                            Gap(8.h),
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: (movie.availableLanguages ?? '')
                                  .split(',')
                                  .where((e) => e.trim().isNotEmpty)
                                  .map(
                                    (lanuage) =>
                                        MovieTags(label: lanuage.trim()),
                                  )
                                  .toList(),
                            ),
                            Gap(8.h),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    (movie.genres ?? '')
                                        .split(',')
                                        .map((e) => e.trim())
                                        .where((e) => e.isNotEmpty)
                                        .join(' • '),
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: FontFamily.poppins,
                                      color: ColorName.black1,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  InlineExpandableText(
                                    text: "${movie.description}",
                                    trimLines: 2,
                                  ),
                                ],
                              ),
                            ),
                            Gap(10.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Casts :',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: ColorName.black,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  height: 95,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: movie.casts?.length,
                                    itemBuilder: (_, index) {
                                      final cast = movie.casts?[index];
                                      return CastCrewCard(
                                        imageUrl: cast!.profileImage ??
                                            'default_image_url.png',
                                        name: cast.name ?? '',
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Gap(10.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Crews :',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: ColorName.black,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  height: 95,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: movie.crews?.length,
                                    itemBuilder: (_, index) {
                                      final crew = movie.crews?[index];
                                      return CastCrewCard(
                                        imageUrl: crew!.profileImage ??
                                            'default_image_url.png',
                                        name: crew.name ?? '',
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              Gap(10.h),

              /* ================= REVIEWS ================= */
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Reviews :',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: ColorName.black,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () => MovieReviewsRoute().push(context),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'See more',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: ColorName.black1,
                                ),
                              ),
                              const SizedBox(width: 2),
                              Icon(
                                Icons.keyboard_double_arrow_right,
                                size: 14,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ReviewCard();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: ColorName.white,
          boxShadow: [
            BoxShadow(
              color: ColorName.black.withAlpha(20),
              blurRadius: 8,
              offset: Offset(0, -2),
            )
          ],
        ),
        child: movieAsync.isLoading
            ? const SkeletonLoader(
                height: 40,
                width: double.maxFinite,
              )
            : SizedBox(
                height: 48,
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorName.redColor1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    _showLanguageFormats();
                  },
                  child: const Text(
                    "Book Tickets",
                    style: TextStyle(
                      color: ColorName.white,
                      fontSize: 14,
                      fontFamily: FontFamily.poppins,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}

class MovieDetailstLoading extends StatelessWidget {
  const MovieDetailstLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 18, 18, 18),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [ColorName.lightBackground1, ColorName.lightBackground3],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonLoader(
                    height: 130,
                    width: 90,
                  ),
                  Gap(16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 3),
                        SkeletonLoader(
                          height: 15,
                          width: double.maxFinite,
                        ),
                        Gap(10.h),
                        Row(
                          children: [
                            SkeletonLoader(
                              height: 15,
                              width: 30,
                            ),
                            Gap(6.w),
                            SkeletonLoader(
                              height: 15,
                              width: 150,
                            ),
                          ],
                        ),
                        Gap(7.h),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SkeletonLoader(
                              height: 15,
                              width: 50,
                            ),
                            Gap(6.w),
                            SkeletonLoader(
                              height: 15,
                              width: 50,
                            ),
                          ],
                        ),
                        Gap(8.h),
                        SkeletonLoader(
                          height: 15,
                          width: 150,
                        ),
                        Gap(10.h),
                        SkeletonLoader(
                          height: 15,
                          width: 80,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkeletonLoader(
                height: 40,
                width: double.maxFinite,
              ),
              Gap(15.h),
              Row(
                children: [
                  SkeletonLoader(
                    height: 20,
                    width: 40,
                  ),
                  Gap(8.w),
                  SkeletonLoader(
                    height: 20,
                    width: 40,
                  ),
                  Gap(8.w),
                  SkeletonLoader(
                    height: 20,
                    width: 40,
                  ),
                  Gap(8.w),
                  SkeletonLoader(
                    height: 20,
                    width: 40,
                  ),
                ],
              ),
              Gap(10.h),
              Row(
                children: [
                  SkeletonLoader(
                    height: 20,
                    width: 55,
                  ),
                  Gap(8.w),
                  SkeletonLoader(
                    height: 20,
                    width: 55,
                  ),
                  Gap(8.w),
                  SkeletonLoader(
                    height: 20,
                    width: 55,
                  ),
                  Gap(8.w),
                  SkeletonLoader(
                    height: 20,
                    width: 55,
                  ),
                  Gap(8.w),
                  SkeletonLoader(
                    height: 20,
                    width: 55,
                  ),
                ],
              ),
              Gap(12.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SkeletonLoader(
                          height: 14,
                          width: 45,
                        ),
                        Gap(8.w),
                        SkeletonLoader(
                          height: 14,
                          width: 45,
                        ),
                        Gap(8.w),
                        SkeletonLoader(
                          height: 14,
                          width: 45,
                        ),
                      ],
                    ),
                    Gap(15.h),
                    SkeletonLoader(
                      height: 14,
                      width: double.maxFinite,
                    ),
                    Gap(6.h),
                    SkeletonLoader(
                      height: 14,
                      width: double.maxFinite,
                    ),
                    Gap(13.h),
                    SkeletonLoader(
                      height: 14,
                      width: 60,
                    ),
                    Gap(8.h),
                    SizedBox(
                      height: 90,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 8),
                            child: Column(
                              children: [
                                SkeletonLoader(
                                  height: 70,
                                  width: 70,
                                ),
                                Gap(7.h),
                                SkeletonLoader(
                                  height: 13,
                                  width: 70,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Gap(13.h),
                    SkeletonLoader(
                      height: 14,
                      width: 60,
                    ),
                    Gap(8.h),
                    SizedBox(
                      height: 90,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 8),
                            child: Column(
                              children: [
                                SkeletonLoader(
                                  height: 70,
                                  width: 70,
                                ),
                                Gap(7.h),
                                SkeletonLoader(
                                  height: 13,
                                  width: 70,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MovieLanguageFormatsLoading extends StatelessWidget {
  const MovieLanguageFormatsLoading({super.key});

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

class MovieTags extends StatelessWidget {
  final String label;

  const MovieTags({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: ColorName.lightBackground3, // Tag background
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: ColorName.black2,
          fontSize: 11,
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
