import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/widgets/app_bar.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class RefundPolicyScreen extends HookConsumerWidget {
  const RefundPolicyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: secondaryAppBar("Cancellation & Refund Policy"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 11,
              ),
              RefundPolicyCard(
                headText: "1.	Ticket Cancellations",
                subHeadText: "1.1	Cancellation Requests:",
                bodyList: [
                  "Cancellations will only be considered if the request is made before 6 Hours of start of the show and no cancellation or refund will be available/given after that. The refund amount will only be base price of the ticket and not the charges, fees, duties, taxes, levies applied to the base ticket price. Further the cancellation depends on the theater which user books from as some theaters have a strict policy of non-cancellation of tickets and it will be clearly mentioned while booking for the user, in that case the above mentioned condition do not apply and cancellation can’t be processed.",
                ],
              ),
              RefundPolicyCard(
                headText: "2.	Refunds",
                subHeadText: "2.1	Refund Approval:",
                bodyList: [
                  "In case of any refunds approved by our team, the process will be initiated within 15 to 30 days of the approval decision. Refunds will be processed to the original method of payment used during the purchase. Please note that charges, fees, duties, taxes, levies applied to the ticket are non-refundable.",
                ],
              ),
              RefundPolicyCard(
                headText: "3.	Contact Information",
                bodyList: [
                  "If you have any questions about our cancellation and refund policy, please contact us:",
                  "Email: ticketbayind@gmail.com",
                  "Phone: +91-9449618559",
                  "Address: THE MERIDIAN Luxury Hotel, District Stadium Main Road(Kurvangi main road), Dhantaramakki, Chikkamagaluru – 577101, Karnataka, India",
                ],
              ),
              const SizedBox(
                height: 11,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RefundPolicyCard extends StatelessWidget {
  final String headText;
  final String? subHeadText;
  final List<String> bodyList;

  const RefundPolicyCard({
    super.key,
    required this.headText,
    this.subHeadText,
    required this.bodyList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      padding: const EdgeInsets.fromLTRB(18, 17, 18, 11),
      decoration: BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: ColorName.black.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: ColorName.black.withOpacity(0.08),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --------------------- MAIN HEADING ---------------------
          Text(
            headText,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.poppins,
              color: ColorName.black,
            ),
          ),

          // --------------------- OPTIONAL SUBHEAD ---------------------
          if (subHeadText != null) ...[
            const SizedBox(height: 6),
            Text(
              subHeadText!,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: FontFamily.poppins,
                color: ColorName.black.withOpacity(0.85),
              ),
            ),
          ],

          const SizedBox(height: 8),

          // --------------------- BODY LIST ---------------------
          ...bodyList.map((item) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    margin: const EdgeInsets.only(top: 6),
                    decoration: BoxDecoration(
                      color: ColorName.themeColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _buildBodyText(item),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildBodyText(String text) {
    final prefixes = ["Email:", "Phone:", "Address:"];
    for (final prefix in prefixes) {
      if (text.startsWith(prefix)) {
        final remaining = text.substring(prefix.length).trim();
        return RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "$prefix ",
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  fontFamily: FontFamily.poppins,
                  color: ColorName.black1,
                ),
              ),
              TextSpan(
                text: remaining,
                style: const TextStyle(
                  fontSize: 13,
                  height: 1.4,
                  fontFamily: FontFamily.poppins,
                  color: ColorName.black1,
                ),
              ),
            ],
          ),
        );
      }
    }

    /// Normal text if no prefix matched
    return Text(
      text,
      style: const TextStyle(
        fontSize: 13,
        height: 1.4,
        fontFamily: FontFamily.poppins,
        color: ColorName.black1,
      ),
    );
  }
}
