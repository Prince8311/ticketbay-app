import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/router/app_router.dart';
import 'package:ticket_bay/core/shared/helpers/date_utils.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/loader.dart';
import 'package:ticket_bay/features/home/presentation/providers/location_provider.dart';
import 'package:ticket_bay/features/movie/domain/models/movies_model.dart';
import 'package:ticket_bay/features/movie/presentation/providers/movie_filter_provider.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieInfoScreen extends HookConsumerWidget {
  const MovieInfoScreen({
    super.key,
    required this.moviedata,
  });

  final MovieInfoData moviedata;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLocation = ref.watch(locationProvider);
    final dates = useMemoized(() => DateUtilsHelper.getNextDates(days: 10));
    final selectedDateIndex = useState<int>(-1);
    final selectedDate =
        selectedDateIndex.value >= 0 && selectedDateIndex.value < dates.length
            ? formatSelectedDate(dates[selectedDateIndex.value])
            : '';

    final movieAvailableDatesAsync = ref.watch(getMovieAvailableDatesProvider(
      movieName: moviedata.name ?? '',
      location: selectedLocation!,
      language: moviedata.language ?? '',
      format: moviedata.format ?? '',
    ));

    final availableDateSet = useState<Set<String>>({});
    Set<String> extractAvailableDates(List<MovieDateItem> items) {
      return items
          .map((e) => normalizeApiDate(e.date))
          .whereType<String>()
          .toSet();
    }

    useEffect(() {
      movieAvailableDatesAsync.whenOrNull(
        data: (apiDates) {
          if (selectedDateIndex.value != -1) return;

          final set = extractAvailableDates(apiDates ?? []);
          availableDateSet.value = set;

          final firstAvailableIndex = dates.indexWhere(
            (d) => set.contains(d.iso),
          );

          if (firstAvailableIndex != -1) {
            selectedDateIndex.value = firstAvailableIndex;
          }
        },
      );
      return null;
    }, [movieAvailableDatesAsync]);

    final movieInfoAsync = ref.watch(
      getMovieInfoProvider(
        movieName: moviedata.name ?? '',
        location: selectedLocation,
        date: selectedDate,
        language: moviedata.language ?? '',
        format: moviedata.format ?? '',
      ),
    );

    Future<void> openGoogleMaps(String address) async {
      if (address.isEmpty) return;

      final encodedAddress = Uri.encodeComponent(address);

      final googleMapsUri = Uri.parse(
        'https://www.google.com/maps/search/?api=1&query=$encodedAddress',
      );

      if (await canLaunchUrl(googleMapsUri)) {
        await launchUrl(
          googleMapsUri,
          mode: LaunchMode.externalApplication,
        );
      } else {
        throw 'Could not open Google Maps';
      }
    }

    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: AppBar(
        backgroundColor: ColorName.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(8),
          child: Divider(
            height: 1,
            thickness: 1,
            color: ColorName.black1.withAlpha(60), // subtle border
          ),
        ),
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 15, 16, 8),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 22,
                  ),
                ),
                Gap(6.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        moviedata.name ?? '-',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 15,
                          color: ColorName.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                      Gap(2.h),
                      Row(
                        children: [
                          Text(
                            'Show Runtime:',
                            style: TextStyle(
                              fontSize: 12,
                              color: ColorName.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.poppins,
                            ),
                          ),
                          Gap(3.w),
                          Text(
                            moviedata.totalTime ?? '-',
                            style: TextStyle(
                              fontSize: 12,
                              color: ColorName.black2,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.poppins,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: ColorName.borderColor, // border color
                    width: 1, // border thickness
                  ),
                ),
              ),
              child: movieAvailableDatesAsync.when(
                  loading: () => SizedBox(
                        height: 85,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (_, __) => Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: SkeletonLoader(
                              height: 85,
                              width: 65,
                            ),
                          ),
                        ),
                      ),
                  error: (_, __) => const SizedBox(),
                  data: (_) {
                    final availableSet = availableDateSet.value;

                    return SizedBox(
                      height: 85,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dates.length,
                        itemBuilder: (context, index) {
                          final item = dates[index];
                          final isAvailable = availableSet.contains(item.iso);
                          final isSelected = selectedDateIndex.value == index;

                          return GestureDetector(
                            onTap: isAvailable
                                ? () {
                                    selectedDateIndex.value = index;
                                  }
                                : null,
                            child: Opacity(
                              opacity: isAvailable ? 1.0 : 0.4,
                              child: Container(
                                width: 65,
                                height: 85,
                                margin: EdgeInsets.only(right: 10),
                                padding: EdgeInsets.fromLTRB(15, 13, 15, 9),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? ColorName.themeColor
                                      : ColorName.lightBackground2
                                          .withAlpha(180),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      item.day,
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: isAvailable
                                            ? isSelected
                                                ? ColorName.white
                                                : ColorName.black1
                                            : ColorName.black2,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: FontFamily.poppins,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      item.date,
                                      style: TextStyle(
                                        fontSize: 18,
                                        height: 1,
                                        color: isAvailable
                                            ? isSelected
                                                ? ColorName.white
                                                : ColorName.black
                                            : ColorName.black2,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: FontFamily.poppins,
                                      ),
                                    ),
                                    Gap(4.h),
                                    Text(
                                      item.month,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: isSelected
                                            ? ColorName.white
                                            : ColorName.black2,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: FontFamily.poppins,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: ColorName.borderColor, // border color
                    width: 1, // border thickness
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 18),
                    decoration: BoxDecoration(
                      color: ColorName.themeColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      moviedata.language ?? '-',
                      style: TextStyle(
                        height: 1,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.poppins,
                        color: ColorName.white,
                      ),
                    ),
                  ),
                  Gap(10.w),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 18),
                    decoration: BoxDecoration(
                      color: ColorName.themeColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      moviedata.format ?? '-',
                      style: TextStyle(
                        height: 1,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.poppins,
                        color: ColorName.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.drive_file_rename_outline,
                          size: 17,
                        ),
                        Gap(3.w),
                        Text(
                          'Edit',
                          style: TextStyle(
                            height: 1,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamily.poppins,
                            color: ColorName.black,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                  child: movieInfoAsync.when(
                    loading: () => Column(
                      children: List.generate(4, (_) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 15),
                          child: SkeletonLoader(
                              height: 130, width: double.maxFinite),
                        );
                      }),
                    ),
                    error: (e, _) =>
                        const Center(child: Text('Something went wrong')),
                    data: (movieInfo) {
                      if (movieInfo == null || movieInfo.length == 0) {
                        return const Center(child: Text('No shows available'));
                      }
                      return Column(
                        children: List.generate(movieInfo.length, (index) {
                          final theater = movieInfo[index];
                          return Container(
                            margin: EdgeInsets.only(bottom: 18),
                            child: Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: ColorName.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorName.black.withAlpha(30),
                                    blurRadius: 6,
                                    offset: const Offset(-1, -1),
                                  ),
                                  BoxShadow(
                                    color: ColorName.black.withAlpha(40),
                                    blurRadius: 8,
                                    offset: const Offset(2, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(15, 13, 15, 9),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: ColorName.borderColor,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Assets.images.theater.image(width: 35),
                                        Gap(12.w),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                theater.theaterName ?? '-',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: ColorName.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily:
                                                      FontFamily.poppins,
                                                ),
                                              ),
                                              Text(
                                                theater.location ?? '-',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: ColorName.black2,
                                                  fontFamily:
                                                      FontFamily.poppins,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Gap(8.w),
                                        GestureDetector(
                                          onTap: () {
                                            openGoogleMaps(
                                                theater.location ?? '');
                                          },
                                          child: Icon(
                                            Icons.assistant_direction,
                                            size: 26,
                                            color: ColorName.blueColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 14, horizontal: 15),
                                    child: Wrap(
                                      spacing: 8,
                                      runSpacing: 8,
                                      children:
                                          (theater.timings ?? []).map((time) {
                                        return GestureDetector(
                                          onTap: () =>
                                              SeatLayoutRoute().push(context),
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 5),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: ColorName.blueColor),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Text(
                                              time.startTime ?? '-',
                                              style: TextStyle(
                                                color: ColorName.black2,
                                                fontSize: 13,
                                                fontFamily: FontFamily.poppins,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
