import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/widgets/app_bar.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class PrivacyPolicyScreen extends HookConsumerWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: secondaryAppBar("Privacy Policy"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 11,
              ),
              PolicyCard(
                heading: "1. Information We Collect",
                bodyList: [
                  "Personal Information: We collect personal details such as your name, email address, shipping address, phone number, and payment information when you make a purchase, create an account, or contact us.",
                  "Non-Personal Information: We may collect non-personal data such as browser type, operating system, and browsing behavior to improve our website and services.",
                ],
              ),
              PolicyCard(
                heading: "2. How We Use Your Information",
                bodyList: [
                  "To Process Orders: We use your personal information to process and fulfill your orders.",
                  "To Communicate: We use your contact information to send you updates about your tickets, respond to inquiries, and send promotional materials if you have opted in.",
                  "To Improve Our Services: We analyze non-personal information to understand user behavior and enhance our website’s performance.",
                ],
              ),
              PolicyCard(
                heading: "3. Information Sharing",
                bodyList: [
                  "Third-Party Service Providers: We may share your information with third-party service provides   who assist us in operating our website, processing payments, and delivering tickets.",
                  "Legal Requirements: We may disclose your information if required by law or to protect our rights.",
                ],
              ),
              PolicyCard(
                heading: "4. Data Security",
                bodyList: [
                  "We implement appropriate security measures to protect your personal information from unauthorized access, alteration, disclosure, or destruction",
                ],
              ),
              PolicyCard(
                heading: "5. Your Rights",
                bodyList: [
                  "Access and Correction: You have the right to access and correct your personal information. You  can update your account details through our website.",
                  "Opt-Out: You can opt-out of receiving promotional emails by following the unsubscribe instructions in the emails.",
                ],
              ),
              PolicyCard(
                heading: "6. Changes to This Policy",
                bodyList: [
                  "We may update this Privacy Policy from time to time. Any changes will be posted on this page, and the revised date will be indicated at the top of the policy.",
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

class PolicyCard extends StatelessWidget {
  final String heading;
  final List<String> bodyList;

  const PolicyCard({
    super.key,
    required this.heading,
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
          // Heading
          Text(
            heading,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.poppins,
              color: ColorName.black,
            ),
          ),

          const SizedBox(height: 10),

          // Body list
          ...bodyList.map(
            (text) => Padding(
              padding: const EdgeInsets.only(bottom: 9),
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

                  // Text
                  Expanded(
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 13,
                        height: 1.4,
                        fontFamily: FontFamily.poppins,
                        color: ColorName.black1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
