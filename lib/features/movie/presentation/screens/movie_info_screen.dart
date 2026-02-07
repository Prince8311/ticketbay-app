import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/router/app_router.dart';
import 'package:ticket_bay/core/shared/helpers/date_utils.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class MovieInfoScreen extends HookConsumerWidget {
  const MovieInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dates = useMemoized(() => DateUtilsHelper.getNextDates(days: 10));

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
                            '3hr 12min',
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
              child: SizedBox(
                height: 85,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dates.length,
                  itemBuilder: (context, index) {
                    final item = dates[index];
                    return Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Container(
                        width: 65,
                        height: 85,
                        padding: EdgeInsets.fromLTRB(15, 13, 15, 9),
                        decoration: BoxDecoration(
                          color: ColorName.lightBackground2.withAlpha(180),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          children: [
                            Text(
                              item.day,
                              style: TextStyle(
                                fontSize: 11,
                                color: ColorName.black1,
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
                                color: ColorName.black,
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
                                color: ColorName.black2,
                                fontWeight: FontWeight.w500,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
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
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 18),
                    decoration: BoxDecoration(
                      color: ColorName.themeColor,
                      borderRadius: BorderRadius.circular(25),
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
                  child: Column(
                    children: List.generate(8, (index) {
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
                                offset: const Offset(-1, -1), // top-left
                              ),
                              BoxShadow(
                                color: ColorName.black.withAlpha(40),
                                blurRadius: 8,
                                offset: const Offset(2, 4), // bottom-right
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
                                      color:
                                          ColorName.borderColor, // border color
                                      width: 1, // border thickness
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
                                            'Sreeleka Theater',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: ColorName.black,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: FontFamily.poppins,
                                            ),
                                          ),
                                          Text(
                                            'orem Ipsum is simply dummy text of the printing and typesetting',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: ColorName.black2,
                                              fontFamily: FontFamily.poppins,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 14, horizontal: 15),
                                child: Wrap(
                                  spacing: 8,
                                  runSpacing: 8,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        SeatLayoutRoute().push(context);
                                      },
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
                                          '02:10 PM',
                                          style: TextStyle(
                                            color: ColorName.black2,
                                            fontSize: 13,
                                            fontFamily: FontFamily.poppins,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
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
                                          '05:30 PM',
                                          style: TextStyle(
                                            color: ColorName.black2,
                                            fontSize: 13,
                                            fontFamily: FontFamily.poppins,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
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
                                          '05:30 PM',
                                          style: TextStyle(
                                            color: ColorName.black2,
                                            fontSize: 13,
                                            fontFamily: FontFamily.poppins,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
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
                                          '05:30 PM',
                                          style: TextStyle(
                                            color: ColorName.black2,
                                            fontSize: 13,
                                            fontFamily: FontFamily.poppins,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
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
                                          '05:30 PM',
                                          style: TextStyle(
                                            color: ColorName.black2,
                                            fontSize: 13,
                                            fontFamily: FontFamily.poppins,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
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
