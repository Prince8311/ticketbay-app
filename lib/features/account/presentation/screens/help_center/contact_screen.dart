import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/widgets/app_bar.dart';
import 'package:ticket_bay/core/shared/widgets/fancy_heading.dart';
import 'package:ticket_bay/core/shared/widgets/text_area.dart';
import 'package:ticket_bay/core/shared/widgets/text_field.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class ContactScreen extends HookConsumerWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: secondaryAppBar("Contact Us"),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shetty Ticket Counter Pvt. Ltd.',
                      style: const TextStyle(
                        color: ColorName.black1,
                        fontSize: 15.5,
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Registered Address: ",
                            style: const TextStyle(
                              color: ColorName.themeColor, // different color
                              fontSize: 13,
                              fontFamily: FontFamily.poppins,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const TextSpan(
                            text:
                                "THE MERIDIAN Luxury Hotel, District Stadium Main Road Kurvangi main road, Dhantaramakki, Chikkamagaluru, Karnataka, PIN: 577101",
                            style: TextStyle(
                              color: ColorName.black1,
                              fontSize: 12,
                              fontFamily: FontFamily.poppins,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 7),
                    RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Operational Address: ",
                            style: const TextStyle(
                              color: ColorName.themeColor, // different color
                              fontSize: 13,
                              fontFamily: FontFamily.poppins,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const TextSpan(
                            text:
                                "THE MERIDIAN Luxury Hotel, District Stadium Main Road Kurvangi main road, Dhantaramakki, Chikkamagaluru, Karnataka, PIN: 577101",
                            style: TextStyle(
                              color: ColorName.black1,
                              fontSize: 12,
                              fontFamily: FontFamily.poppins,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 12),
                      child: Container(
                        width: double.infinity,
                        height: 1,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                              ColorName.borderColor1,
                              ColorName.transparent
                            ])),
                      ),
                    ),
                    FancyHeading(
                      title: "Send",
                      subtitle: "Message",
                    ),
                    const SizedBox(height: 20),
                    AppTextField(label: "Name"),
                    const SizedBox(height: 12),
                    AppTextField(label: "Email"),
                    const SizedBox(height: 12),
                    AppTextField(
                      label: "Mobile No.",
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 12),
                    AppTextField(label: "Subject"),
                    const SizedBox(height: 12),
                    AppTextArea(
                      label: "Message",
                      maxLines: 3,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorName.themeColor,
                        minimumSize: const Size(double.infinity, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Send',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: FontFamily.poppins,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 16,
              bottom: 0,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: ColorName.blueColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(80),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                  child: const Icon(
                    Icons.phone_in_talk,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 16,
              bottom: 66,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: ColorName.blueColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(80),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                  child: const Icon(
                    Icons.mail,
                    color: Colors.white,
                    size: 22,
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
