import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/router/app_router.dart';
import 'package:ticket_bay/core/shared/widgets/fancy_heading.dart';
import 'package:ticket_bay/core/shared/widgets/text_field.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class RegisterScreen extends HookConsumerWidget {
  const RegisterScreen({super.key});

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
                padding: const EdgeInsets.fromLTRB(20, 60, 20, 200),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FancyHeading(
                        title: "Sign",
                        subtitle: "Up",
                      ),
                      const SizedBox(height: 30),
                      AppTextField(label: "Name"),
                      const SizedBox(height: 12),
                      AppTextField(label: "Email"),
                      const SizedBox(height: 12),
                      AppTextField(
                        label: "Mobile No.",
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(height: 12),
                      AppTextField(label: "Password", obscureText: true),
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
                          'Sign Up',
                          style: const TextStyle(
                            color: ColorName.white,
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
                  height: 170,
                  decoration: const BoxDecoration(
                    color: ColorName.themeColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(350, 180),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(150, 20, 16, 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'One of us ?',
                          style: TextStyle(
                            fontSize: 15,
                            color: ColorName.white,
                            fontFamily: FontFamily.poppins,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Continue to your account and start exploring.',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 13,
                            color: ColorName.white.withAlpha(210),
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () => LoginRoute().push(context),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white.withAlpha(0),
                            foregroundColor: ColorName.white,
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: const BorderSide(
                                color: ColorName.white,
                                width: 1,
                              ),
                            ),
                          ),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: FontFamily.poppins,
                              fontWeight: FontWeight.w500,
                              height: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: Assets.images.registerIcon.svg(
                  width: 185,
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
