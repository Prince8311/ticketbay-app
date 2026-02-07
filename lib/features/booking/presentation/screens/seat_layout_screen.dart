import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class ScreenLayoutScreen extends HookConsumerWidget {
  const ScreenLayoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                        'Kantara: A Legend - Chapter 1',
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
                        'Sreelekha Theater',
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
                          'Hindi',
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
                          '2D',
                          style: TextStyle(
                            height: 1,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamily.poppins,
                            color: ColorName.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(10.h),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              'Mon',
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
                              '25 Jan, 2026',
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
                              '02:15 PM',
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
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.drive_file_rename_outline,
                              size: 17,
                            ),
                            Gap(3.w),
                            Text(
                              '2 Seats',
                              style: TextStyle(
                                height: 1,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                fontFamily: FontFamily.poppins,
                                color: ColorName.black,
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
            Gap(10.h),
            Center(
              child: Assets.images.theaterScreen.svg(width: 225),
            ),
            Gap(20.h),
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ===== SEATS (single horizontal scroll) =====
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          child: Column(
                            children: List.generate(20, (rowIndex) {
                              return SizedBox(
                                height: 30, // 🔑 fixed row height
                                child: Row(
                                  children: List.generate(20, (seatIndex) {
                                    final seatNumber = seatIndex + 1;

                                    return _SeatBox(seat: seatNumber);
                                  }),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),

                      Gap(12.w),

                      // ===== FIXED ROW LABELS =====
                      Column(
                        children: List.generate(20, (rowIndex) {
                          final rowLabel = String.fromCharCode(65 + rowIndex);

                          return SizedBox(
                            height: 30, // 🔑 SAME height as seat row
                            child: Center(
                              child: Text(
                                rowLabel,
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

  const _SeatBox({required this.seat});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      padding: EdgeInsets.all(4),
      child: Container(
        width: 22,
        height: 22,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: ColorName.greenColor),
          color: ColorName.white,
        ),
        child: Text(
          seat.toString(),
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            fontFamily: FontFamily.poppins,
            color: ColorName.black1,
          ),
        ),
      ),
    );
  }
}
