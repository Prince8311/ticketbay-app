import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/helpers/date_utils.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/loader.dart';
import 'package:ticket_bay/features/booking/domain/models/layout_filter_model.dart';
import 'package:ticket_bay/features/booking/domain/models/screen_layout_model.dart';
import 'package:ticket_bay/features/booking/presentation/providers/screen_layout_provider.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

final seatCountProvider = StateProvider<int>((ref) => 1);
final selectedSectionProvider = StateProvider<SectionItem?>((ref) => null);

class ScreenLayoutScreen extends HookConsumerWidget {
  const ScreenLayoutScreen({
    super.key,
    required this.layoutData,
  });

  final SeatLayoutInfoModel layoutData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seatCount = ref.watch(seatCountProvider);
    final selectedSection = ref.watch(selectedSectionProvider);
    Widget getVehicleImage(int count) {
      if (count == 1) {
        return Assets.images.cycle.image(height: 90);
      } else if (count == 2) {
        return Assets.images.bike.image(height: 90);
      } else if (count == 3) {
        return Assets.images.autoRikshaw.image(height: 90);
      } else if (count == 4) {
        return Assets.images.smallCar.image(height: 90);
      } else if (count >= 5 && count <= 7) {
        return Assets.images.largeCar.image(height: 90);
      } else {
        return Assets.images.bus.image(height: 90);
      }
    }

    ref.listen<AsyncValue<List<SectionItem>?>>(
      getScreenSectionsProvider(
        screen: layoutData.screen ?? '',
        screenId: layoutData.screenId ?? '',
        theaterName: layoutData.theaterName ?? '',
      ),
      (previous, next) {
        next.whenData((sections) {
          if (sections != null &&
              sections.isNotEmpty &&
              ref.read(selectedSectionProvider) == null) {
            ref.read(selectedSectionProvider.notifier).state = sections.first;
          }
        });
      },
    );

    final screenLayoutAsync = selectedSection == null
        ? const AsyncValue<List<ScreenSeatsModel>?>.loading()
        : ref.watch(
            getScreenLayoutProvider(
              screenId: layoutData.screenId ?? '',
              sectionName: selectedSection.sectionName ?? '',
              theaterName: layoutData.theaterName ?? '',
            ),
          );

    void _showSectionsDrawer() {
      showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        isScrollControlled: true,
        backgroundColor: ColorName.white,
        builder: (ctx) {
          return HookConsumer(
            builder: (context, ref, _) {
              final selected = ref.watch(seatCountProvider);
              final selectedSection = ref.watch(selectedSectionProvider);
              final screenSectionsAsync = ref.watch(
                getScreenSectionsProvider(
                  screen: layoutData.screen ?? '',
                  screenId: layoutData.screenId ?? '',
                  theaterName: layoutData.theaterName ?? '',
                ),
              );

              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(ctx).viewInsets.bottom,
                ),
                child: FractionallySizedBox(
                  heightFactor: 0.62,
                  widthFactor: 1,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
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
                        Text(
                          "How many seats you want?",
                          style: TextStyle(
                            color: ColorName.black1,
                            fontSize: 14,
                            fontFamily: FontFamily.poppins,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(15.h),
                        getVehicleImage(selected),
                        Gap(10.h),
                        Wrap(
                          spacing: 9,
                          children: List.generate(10, (index) {
                            final value = index + 1;
                            final isSelected = value == selected;

                            return GestureDetector(
                              onTap: () {
                                ref.read(seatCountProvider.notifier).state =
                                    value;
                              },
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? ColorName.themeColor
                                      : ColorName.white,
                                  border: Border.all(
                                    color: isSelected
                                        ? ColorName.themeColor
                                        : ColorName.borderColor,
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Text(
                                    value.toString(),
                                    style: TextStyle(
                                      color: isSelected
                                          ? ColorName.white
                                          : ColorName.black2,
                                      fontSize: 11.3,
                                      fontFamily: FontFamily.poppins,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                        Gap(15.h),
                        Expanded(
                          child: screenSectionsAsync.when(
                            loading: () => SingleChildScrollView(
                              child: Column(
                                children: [
                                  SkeletonLoader(
                                    height: 80,
                                    width: double.maxFinite,
                                  ),
                                  Gap(10.h),
                                  SkeletonLoader(
                                    height: 80,
                                    width: double.maxFinite,
                                  ),
                                  Gap(10.h),
                                  SkeletonLoader(
                                    height: 80,
                                    width: double.maxFinite,
                                  ),
                                ],
                              ),
                            ),
                            error: (e, _) => const Center(
                                child: Text('Something went wrong')),
                            data: (sections) {
                              if (sections == null || sections.isEmpty) {
                                return const Center(
                                  child: Text('No sections available'),
                                );
                              }
                              return ListView.builder(
                                itemCount: sections.length,
                                itemBuilder: (context, index) {
                                  final item = sections[index];
                                  final isSelected =
                                      selectedSection?.sectionName ==
                                          item.sectionName;
                                  return GestureDetector(
                                    onTap: () {
                                      ref
                                          .read(
                                              selectedSectionProvider.notifier)
                                          .state = item;
                                    },
                                    child: Container(
                                      width: double.maxFinite,
                                      margin: EdgeInsets.only(bottom: 10),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: isSelected
                                            ? ColorName.blueColor
                                            : ColorName.lightBackground2
                                                .withAlpha(125),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item.sectionName ?? '-',
                                            style: TextStyle(
                                              color: isSelected
                                                  ? ColorName.white
                                                  : ColorName.black1,
                                              fontSize: 14,
                                              fontStyle: FontStyle.italic,
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Gap(7.h),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "₹",
                                                style: TextStyle(
                                                  color: isSelected
                                                      ? ColorName.white
                                                      : ColorName.black,
                                                  fontSize: 13,
                                                  height: 1.19,
                                                  fontFamily:
                                                      FontFamily.poppins,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Gap(1.w),
                                              Text(
                                                item.price ?? '-',
                                                style: TextStyle(
                                                  color: isSelected
                                                      ? ColorName.white
                                                      : ColorName.black,
                                                  fontSize: 20,
                                                  height: 1,
                                                  fontFamily:
                                                      FontFamily.poppins,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Spacer(),
                                              Text(
                                                "${item.seats} seats available",
                                                style: TextStyle(
                                                    color: isSelected
                                                        ? ColorName.white
                                                        : ColorName.black2,
                                                    fontSize: 11,
                                                    height: 1,
                                                    fontFamily:
                                                        FontFamily.poppins),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Gap(15.h),
                        SizedBox(
                          height: 45,
                          width: double.maxFinite,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorName.redColor1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Select Seats",
                              style: TextStyle(
                                color: ColorName.white,
                                fontSize: 14,
                                fontFamily: FontFamily.poppins,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      );
    }

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showSectionsDrawer();
      });
      return null;
    }, []);

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
            color: ColorName.black1.withAlpha(60),
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
                        layoutData.movieName ?? '-',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorName.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                      Gap(2.h),
                      Text(
                        layoutData.theaterName ?? '-',
                        style: TextStyle(
                          fontSize: 13,
                          color: ColorName.black.withAlpha(120),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.poppins,
                        ),
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
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: ColorName.borderColor, // border color
                    width: 1, // border thickness
                  ),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 18),
                        decoration: BoxDecoration(
                          color: ColorName.themeColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          layoutData.language ?? '-',
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
                        padding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 18),
                        decoration: BoxDecoration(
                          color: ColorName.themeColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          layoutData.format ?? '-',
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
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 18),
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorName.borderColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          layoutData.screen ?? '-',
                          style: TextStyle(
                            height: 1,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamily.poppins,
                            color: ColorName.black1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(10.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Gap(2.w),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              formatDay(layoutData.day),
                              style: TextStyle(
                                height: 1,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: FontFamily.poppins,
                                color: ColorName.black2,
                              ),
                            ),
                            Gap(6.w),
                            Container(
                              width: 1,
                              height: 10,
                              decoration:
                                  BoxDecoration(color: ColorName.black2),
                            ),
                            Gap(6.w),
                            Text(
                              layoutData.date ?? '-',
                              style: TextStyle(
                                height: 1,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: FontFamily.poppins,
                                color: ColorName.black2,
                              ),
                            ),
                            Gap(6.w),
                            Container(
                              width: 1,
                              height: 10,
                              decoration:
                                  BoxDecoration(color: ColorName.black2),
                            ),
                            Gap(6.w),
                            Text(
                              layoutData.time ?? '-',
                              style: TextStyle(
                                height: 1,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: FontFamily.poppins,
                                color: ColorName.black2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _showSectionsDrawer(),
                        child: Row(
                          children: [
                            Icon(
                              Icons.drive_file_rename_outline,
                              size: 17,
                              color: ColorName.blueColor,
                            ),
                            Gap(3.w),
                            Text(
                              '$seatCount Seat${seatCount > 1 ? 's' : ''}',
                              style: TextStyle(
                                height: 1,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                fontFamily: FontFamily.poppins,
                                color: ColorName.blueColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(10.w),
                    ],
                  ),
                ],
              ),
            ),
            Gap(10.h),
            Center(
              child: Assets.images.theaterScreen.svg(width: 225),
            ),
            Gap(8.h),
            Consumer(
              builder: (context, ref, _) {
                final selectedSection = ref.watch(selectedSectionProvider);
                if (selectedSection == null) return const SizedBox();

                return Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 5),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: ColorName.borderColor),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        selectedSection.sectionName ?? '-',
                        style: TextStyle(
                          color: ColorName.black1,
                          fontSize: 12,
                          fontFamily: FontFamily.poppins,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Gap(6.w),
                      Text(
                        "[₹${selectedSection.price ?? '-'}]",
                        style: TextStyle(
                          color: ColorName.black1,
                          fontSize: 11,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Gap(15.h),
            Expanded(
              child: screenLayoutAsync.when(
                loading: () => const SizedBox(),
                error: (e, _) =>
                    const Center(child: Text('Failed to load layout')),
                data: (sections) {
                  if (sections == null || sections.isEmpty) {
                    return const Center(child: Text('No seats available'));
                  }

                  // Usually one section → one seat layout
                  final rows = sections.first.seatLayout ?? [];
                  final reversedRows = rows.reversed.toList();

                  return SingleChildScrollView(
                    reverse: false,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ===== SEATS =====
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              reverse: true,
                              child: Column(
                                children:
                                    reversedRows.asMap().entries.map((entry) {
                                  final rowIndex = entry.key;
                                  final row = entry.value;
                                  final seatCount =
                                      int.tryParse(row.seats ?? '0') ?? 0;
                                  final gapSeatList = (row.gapSeats ?? '')
                                      .split(',')
                                      .where((e) => e.isNotEmpty)
                                      .map(int.parse)
                                      .toList();

                                  final gapAmountList = (row.gapAmounts ?? '')
                                      .split(',')
                                      .where((e) => e.isNotEmpty)
                                      .map(int.parse)
                                      .toList();

                                  final Map<int, int> gapMap = {};
                                  for (int i = 0; i < gapSeatList.length; i++) {
                                    if (i < gapAmountList.length) {
                                      gapMap[gapSeatList[i]] = gapAmountList[i];
                                    }
                                  }

                                  return SizedBox(
                                    height: 30,
                                    child: Row(
                                      children:
                                          List.generate(seatCount, (index) {
                                        final seatNo = seatCount - index;

                                        final gapMultiplier =
                                            gapMap[seatNo] ?? 0;
                                        final leftMargin = gapMultiplier * 30.0;

                                        return Consumer(
                                          builder: (context, ref, _) {
                                            final rowLetter =
                                                String.fromCharCode(65 +
                                                    (reversedRows.length -
                                                        1 -
                                                        rowIndex));

                                            final selectedSeats = ref
                                                .watch(selectedSeatsProvider);

                                            final isSelected =
                                                selectedSeats.any(
                                              (s) =>
                                                  s.row == rowLetter &&
                                                  s.seat == seatNo,
                                            );

                                            return GestureDetector(
                                              onTap: () {
                                                ref
                                                    .read(selectedSeatsProvider
                                                        .notifier)
                                                    .toggleSeat(
                                                      SelectedSeat(
                                                        row: rowLetter,
                                                        seat: seatNo,
                                                      ),
                                                    );
                                              },
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    left: leftMargin),
                                                child: _SeatBox(
                                                  seat: seatNo,
                                                  isSelected: isSelected,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),

                          Gap(12.w),

                          // ===== ROW LABELS =====
                          Column(
                            children:
                                List.generate(reversedRows.length, (index) {
                              final rowLetter = String.fromCharCode(
                                  65 + (reversedRows.length - 1 - index));

                              return SizedBox(
                                height: 30,
                                child: Center(
                                  child: Text(
                                    rowLetter,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: FontFamily.poppins,
                                      color: ColorName.black,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Gap(10.h),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 97,
          padding: const EdgeInsets.fromLTRB(16, 13, 16, 10),
          decoration: BoxDecoration(
            color: ColorName.white,
            boxShadow: [
              BoxShadow(
                color: ColorName.black.withAlpha(20),
                blurRadius: 8,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: ColorName.greenColor),
                          color: ColorName.white,
                        ),
                      ),
                      Gap(7.w),
                      Text(
                        'Available',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: FontFamily.poppins,
                          color: ColorName.black1,
                        ),
                      ),
                    ],
                  ),
                  Gap(20.w),
                  Row(
                    children: [
                      Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: ColorName.greenColor),
                          color: ColorName.greenColor,
                        ),
                      ),
                      Gap(7.w),
                      Text(
                        'Selected',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: FontFamily.poppins,
                          color: ColorName.black1,
                        ),
                      ),
                    ],
                  ),
                  Gap(20.w),
                  Row(
                    children: [
                      Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: ColorName.lightBackground2),
                          color: ColorName.lightBackground2,
                        ),
                      ),
                      Gap(7.w),
                      Text(
                        'Booked',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: FontFamily.poppins,
                          color: ColorName.black1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              SizedBox(
                height: 45,
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorName.redColor1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Proceed",
                    style: TextStyle(
                      color: ColorName.white,
                      fontSize: 14.5,
                      fontFamily: FontFamily.poppins,
                      fontWeight: FontWeight.w600,
                    ),
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

class _SeatBox extends StatelessWidget {
  final int seat;
  final bool isSelected;

  const _SeatBox({
    required this.seat,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      padding: const EdgeInsets.all(4),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: ColorName.greenColor),
          color: isSelected ? ColorName.greenColor : ColorName.white,
        ),
        child: Text(
          seat.toString(),
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            fontFamily: FontFamily.poppins,
            color: isSelected ? ColorName.white : ColorName.black1,
          ),
        ),
      ),
    );
  }
}
