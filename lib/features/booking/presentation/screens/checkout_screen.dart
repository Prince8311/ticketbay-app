import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/helpers/booking_prices.dart';
import 'package:ticket_bay/core/shared/helpers/date_utils.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/features/booking/domain/models/booking_model.dart';
import 'package:ticket_bay/features/booking/presentation/providers/screen_layout_provider.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class CheckoutScreen extends HookConsumerWidget {
  const CheckoutScreen({
    super.key,
    required this.bookingData,
  });

  final BookingInfoModel bookingData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showFeeBreakdown = useState(false);
    final selectedSeats = ref.watch(selectedSeatsProvider);
    final formattedSeats = selectedSeats.toList()
      ..sort((a, b) {
        final rowCompare = a.row.compareTo(b.row);
        if (rowCompare != 0) return rowCompare;
        return a.seat.compareTo(b.seat);
      });
    final seatText = formattedSeats.map((s) => '${s.row}-${s.seat}').join(', ');
    final priceData = calculateBookingPrice(
      seatCount: selectedSeats.length,
      seatPrice: bookingData.price,
      adminCommission: bookingData.adminCommission,
    );

    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: AppBar(
        backgroundColor: ColorName.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2),
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
                  child: Row(
                    children: [
                      Text(
                        'Confirm Booking',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorName.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 18),
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorName.blueColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '${selectedSeats.length} seats',
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
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
                    decoration: BoxDecoration(
                      color: ColorName.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: ColorName.black.withAlpha(15),
                          blurRadius: 6,
                          offset: const Offset(-1, -1),
                        ),
                        BoxShadow(
                          color: ColorName.black.withAlpha(25),
                          blurRadius: 8,
                          offset: const Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bookingData.movieName ?? '-',
                          style: TextStyle(
                            fontSize: 14,
                            color: ColorName.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                        Gap(5.h),
                        Row(
                          children: [
                            Text(
                              bookingData.language ?? '-',
                              style: TextStyle(
                                fontSize: 12,
                                color: ColorName.black1,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                            Gap(6.w),
                            Container(
                              width: 1.5,
                              height: 10,
                              decoration: BoxDecoration(
                                color: ColorName.black2.withAlpha(200),
                              ),
                            ),
                            Gap(6.w),
                            Text(
                              bookingData.format ?? '-',
                              style: TextStyle(
                                fontSize: 12,
                                color: ColorName.black1,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                            Gap(6.w),
                            Container(
                              width: 1.5,
                              height: 10,
                              decoration: BoxDecoration(
                                color: ColorName.black2.withAlpha(200),
                              ),
                            ),
                            Gap(6.w),
                            Text(
                              bookingData.screen ?? '-',
                              style: TextStyle(
                                fontSize: 12,
                                color: ColorName.black1,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                          ],
                        ),
                        Gap(4.h),
                        Row(
                          children: [
                            Text(
                              formatDay(bookingData.day),
                              style: TextStyle(
                                fontSize: 12,
                                color: ColorName.black1,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                            Gap(6.w),
                            Container(
                              width: 1.5,
                              height: 10,
                              decoration: BoxDecoration(
                                color: ColorName.black2.withAlpha(200),
                              ),
                            ),
                            Gap(6.w),
                            Text(
                              bookingData.date ?? '-',
                              style: TextStyle(
                                fontSize: 12,
                                color: ColorName.black1,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                            Gap(6.w),
                            Container(
                              width: 1.5,
                              height: 10,
                              decoration: BoxDecoration(
                                color: ColorName.black2.withAlpha(200),
                              ),
                            ),
                            Gap(6.w),
                            Text(
                              bookingData.time ?? '-',
                              style: TextStyle(
                                fontSize: 12,
                                color: ColorName.black1,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                          ],
                        ),
                        Gap(4.h),
                        Text(
                          bookingData.theaterName ?? '-',
                          style: TextStyle(
                            fontSize: 13,
                            color: ColorName.black1,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
                    decoration: BoxDecoration(
                      color: ColorName.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: ColorName.black.withAlpha(15),
                          blurRadius: 6,
                          offset: const Offset(-1, -1),
                        ),
                        BoxShadow(
                          color: ColorName.black.withAlpha(25),
                          blurRadius: 8,
                          offset: const Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '${bookingData.section}: ',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  color: ColorName.black,
                                  fontFamily: FontFamily.poppins,
                                ),
                              ),
                              TextSpan(
                                text: seatText.isEmpty ? '-' : seatText,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: ColorName.black2,
                                  fontFamily: FontFamily.poppins,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Gap(8.h),
                        Container(
                          width: double.maxFinite,
                          height: 1,
                          decoration: BoxDecoration(
                            color: ColorName.borderColor,
                          ),
                        ),
                        Gap(10.h),
                        Row(
                          children: [
                            Text(
                              'Ticket(s) Price',
                              style: TextStyle(
                                fontSize: 13,
                                color: ColorName.black,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '₹${priceData.ticketTotal.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 13,
                                color: ColorName.black2,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                          ],
                        ),
                        Gap(2.h),
                        Row(
                          children: [
                            Text(
                              'Convenience fees',
                              style: TextStyle(
                                fontSize: 13,
                                color: ColorName.black,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showFeeBreakdown.value =
                                    !showFeeBreakdown.value;
                              },
                              child: AnimatedRotation(
                                turns: showFeeBreakdown.value ? 0.5 : 0.0,
                                duration: const Duration(milliseconds: 250),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 22,
                                  color: ColorName.black1,
                                ),
                              ),
                            ),
                            Spacer(),
                            Text(
                              '₹${priceData.convenienceFees.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 13,
                                color: ColorName.black2,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                          ],
                        ),
                        Gap(4.h),
                        AnimatedSize(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          alignment: Alignment.topCenter,
                          child: ClipRect(
                            child: showFeeBreakdown.value
                                ? Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.symmetric(vertical: 4),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(
                                          color: ColorName.borderColor
                                              .withAlpha(150),
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Base amount',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: ColorName.black1,
                                                fontFamily: FontFamily.poppins,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              '₹${priceData.baseAmount.toStringAsFixed(2)}',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: ColorName.black2,
                                                fontFamily: FontFamily.poppins,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Gap(2.h),
                                        Row(
                                          children: [
                                            Text(
                                              'Integrated GST (@18%)',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: ColorName.black1,
                                                fontFamily: FontFamily.poppins,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              '₹${priceData.gstAmount.toStringAsFixed(2)}',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: ColorName.black2,
                                                fontFamily: FontFamily.poppins,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ),
                        ),
                        Gap(2.h),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.only(top: 4),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(color: ColorName.borderColor),
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Order Total',
                                style: TextStyle(
                                  fontSize: 14.5,
                                  color: ColorName.themeColor,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: FontFamily.poppins,
                                ),
                              ),
                              Spacer(),
                              Text(
                                '₹${priceData.orderTotal.toStringAsFixed(2)}',
                                style: TextStyle(
                                  fontSize: 14.5,
                                  color: ColorName.themeColor,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: FontFamily.poppins,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
                    decoration: BoxDecoration(
                      color: ColorName.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: ColorName.black.withAlpha(15),
                          blurRadius: 6,
                          offset: const Offset(-1, -1),
                        ),
                        BoxShadow(
                          color: ColorName.black.withAlpha(25),
                          blurRadius: 8,
                          offset: const Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'For sending details',
                          style: TextStyle(
                            fontSize: 12,
                            color: ColorName.black1,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                        Gap(1.h),
                        Text(
                          'sourishmondal.vizac@gmail.com',
                          style: TextStyle(
                            fontSize: 12,
                            color: ColorName.black2,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                        Gap(5.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Cancellation available for this booking. ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: ColorName.black1,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: FontFamily.poppins,
                                ),
                              ),
                              TextSpan(
                                text: 'To know more, please ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: ColorName.black2,
                                  fontFamily: FontFamily.poppins,
                                ),
                              ),
                              TextSpan(
                                text: 'view cancellation / return policy.',
                                style: TextStyle(
                                  color: ColorName.blueColor,
                                  fontSize: 12,
                                  fontFamily: FontFamily.poppins,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
                    decoration: BoxDecoration(
                      color: ColorName.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: ColorName.black.withAlpha(15),
                          blurRadius: 6,
                          offset: const Offset(-1, -1),
                        ),
                        BoxShadow(
                          color: ColorName.black.withAlpha(25),
                          blurRadius: 8,
                          offset: const Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Text(
                      "By proceeding, I'm expressing my concern to complete this booking transaction.",
                      style: TextStyle(
                        fontSize: 12,
                        height: 1.5,
                        color: ColorName.black2,
                        fontFamily: FontFamily.poppins,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 68,
          padding: const EdgeInsets.fromLTRB(16, 13, 16, 13),
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
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      color: ColorName.black2,
                      fontSize: 11,
                      fontFamily: FontFamily.poppins,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '₹',
                          style: TextStyle(
                            color: ColorName.black1,
                            fontSize: 13,
                            fontFamily: FontFamily.poppins,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: priceData.orderTotal.toStringAsFixed(2),
                          style: TextStyle(
                            color: ColorName.black1,
                            fontSize: 17.5,
                            fontFamily: FontFamily.poppins,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              SizedBox(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorName.redColor1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Pay Now",
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
