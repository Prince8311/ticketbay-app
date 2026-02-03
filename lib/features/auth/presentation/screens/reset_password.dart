import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/widgets/fancy_heading.dart';
import 'package:ticket_bay/core/shared/widgets/text_field.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class ResetPasswordScreen extends HookConsumerWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 90, 20, 200),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FancyHeading(
                        title: "Reset",
                        subtitle: "Password",
                      ),
                      const SizedBox(height: 30),
                      AppTextField(label: "New Password", obscureText: true),
                      const SizedBox(height: 15),
                      AppTextField(
                          label: "Confirm Password", obscureText: true),
                      const SizedBox(height: 30),
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
                          'Submit',
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
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 160,
                  decoration: const BoxDecoration(
                    color: ColorName.themeColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.elliptical(350, 180),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 150, 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Forgot password ?',
                          style: TextStyle(
                            fontSize: 15,
                            color: ColorName.white,
                            fontFamily: FontFamily.poppins,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          'Don’t worry, we\'ll help you recover your account.',
                          style: TextStyle(
                            fontSize: 13,
                            color: ColorName.white.withAlpha(210),
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Assets.images.forgotPasswordIcon.svg(
                  width: 180,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
