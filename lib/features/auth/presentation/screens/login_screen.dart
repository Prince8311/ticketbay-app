import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/router/app_router.dart';
import 'package:ticket_bay/core/shared/helpers/local_storage.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/fancy_heading.dart';
import 'package:ticket_bay/core/shared/widgets/text_field.dart';
import 'package:ticket_bay/features/auth/domain/models/auth_model.dart';
import 'package:ticket_bay/features/auth/presentation/providers/auth_provider.dart';
import 'package:ticket_bay/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final emailController = useTextEditingController();

    useListenable(nameController);
    useListenable(passwordController);

    final isLoading = useState(false);
    final isFormValid = nameController.text.trim().isNotEmpty &&
        passwordController.text.trim().isNotEmpty;

    void _openOTPVerifyDrawer() {
      final controllers = List.generate(6, (index) => TextEditingController());
      final focusNodes = List.generate(6, (index) => FocusNode());
      bool isVerifyLoading = false;
      int secondsRemaining = 90;
      Timer? timer;
      String maskEmail(String email) {
        final parts = email.split('@');
        if (parts.length != 2) return email;
        final name = parts[0];
        final domain = parts[1];
        if (name.length <= 3) {
          return '${name[0]}***@$domain';
        }
        return '${name.substring(0, 3)}***@$domain';
      }

      showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        isScrollControlled: true,
        backgroundColor: ColorName.white,
        builder: (ctx) {
          return StatefulBuilder(
            builder: (context, setState) {
              void startTimer() {
                timer?.cancel();
                secondsRemaining = 90;

                timer = Timer.periodic(const Duration(seconds: 1), (t) {
                  if (secondsRemaining == 0) {
                    t.cancel();
                  } else {
                    setState(() {
                      secondsRemaining--;
                    });
                  }
                });
              }

              if (timer == null) {
                startTimer();
              }

              bool isOtpComplete() {
                return controllers.every((c) => c.text.isNotEmpty);
              }

              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(ctx).viewInsets.bottom,
                ),
                child: FractionallySizedBox(
                  heightFactor: 0.42,
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

                        Gap(25.h),

                        /// OTP TEXT
                        Text.rich(
                          TextSpan(
                            text: "We have sent an OTP to ",
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: ColorName.black1,
                              fontFamily: FontFamily.poppins,
                            ),
                            children: [
                              TextSpan(
                                text: maskEmail(emailController.text.trim()),
                                style: const TextStyle(
                                  color: ColorName.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: FontFamily.poppins,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),

                        Gap(16.h),

                        /// OTP INPUTS
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(6, (index) {
                            return SizedBox(
                              width: 45,
                              height: 45,
                              child: TextField(
                                controller: controllers[index],
                                focusNode: focusNodes[index],
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                cursorColor: ColorName.black,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: FontFamily.poppins,
                                ),
                                decoration: InputDecoration(
                                  counterText: "",
                                  contentPadding: EdgeInsets.zero,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: ColorName.borderColor,
                                      width: 1.2,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: ColorName.blueColor,
                                      width: 1.3,
                                    ),
                                  ),
                                ),
                                onChanged: (value) {
                                  if (value.isNotEmpty && index < 5) {
                                    FocusScope.of(ctx)
                                        .requestFocus(focusNodes[index + 1]);
                                  }
                                  if (value.isEmpty && index > 0) {
                                    FocusScope.of(ctx)
                                        .requestFocus(focusNodes[index - 1]);
                                  }
                                  setState(() {});
                                },
                              ),
                            );
                          }),
                        ),

                        Gap(10.h),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            /// TIMER OR RESEND BUTTON
                            secondsRemaining > 0
                                ? Text(
                                    "Resend OTP in ${secondsRemaining}s",
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: ColorName.black2,
                                      fontFamily: FontFamily.poppins,
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      startTimer();

                                      /// call resend OTP API here
                                    },
                                    child: const Text(
                                      "Resend OTP",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: ColorName.blueColor,
                                        fontFamily: FontFamily.poppins,
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                        Spacer(),
                        Gap(10.h),
                        SizedBox(
                          width: double.maxFinite,
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  (isOtpComplete() && !isVerifyLoading)
                                      ? ColorName.redColor1
                                      : ColorName.lightBackground2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: (isOtpComplete() && !isVerifyLoading)
                                ? () async {
                                    setState(() {
                                      isVerifyLoading = true;
                                    });

                                    final request = OTPVerificationRequestModel(
                                      email: emailController.text.trim(),
                                      otp:
                                          controllers.map((c) => c.text).join(),
                                      isRegistration: false,
                                    );

                                    final result = await ref.read(
                                      verifyOTPProvider(requestBody: request)
                                          .future,
                                    );

                                    setState(() {
                                      isVerifyLoading = false;
                                    });

                                    if (result != null &&
                                        result.status == 200 &&
                                        context.mounted) {
                                      final localDB = await ref
                                          .read(localStorageProvider.future);
                                      await localDB.writeData("reset_email",
                                          emailController.text.trim());
                                      context.pop();
                                      ResetPasswordRoute().push(context);
                                    }
                                  }
                                : null,
                            child: isVerifyLoading
                                ? const SpinKitThreeBounce(
                                    color: Colors.white,
                                    size: 20,
                                  )
                                : const Text(
                                    'Verify OTP',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
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

    void _openEmailDrawer() {
      bool isButtonLoading = false;
      bool emailListenerAdded = false;

      showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        isScrollControlled: true,
        backgroundColor: ColorName.white,
        builder: (ctx) {
          return StatefulBuilder(
            builder: (context, setState) {
              if (!emailListenerAdded) {
                emailController.addListener(() {
                  setState(() {});
                });
                emailListenerAdded = true;
              }
              bool isEmailValid = emailController.text.trim().isNotEmpty;

              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(ctx).viewInsets.bottom,
                ),
                child: FractionallySizedBox(
                  heightFactor: 0.4,
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
                        Gap(25.h),
                        Text(
                          'Please enter your register email address',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: ColorName.black1,
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                        Gap(15.h),
                        AppTextField(
                          label: "",
                          controller: emailController,
                        ),
                        Spacer(),
                        Gap(10.h),
                        SizedBox(
                          width: double.maxFinite,
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  (isEmailValid && !isButtonLoading)
                                      ? ColorName.redColor1
                                      : ColorName.lightBackground2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: (isEmailValid && !isButtonLoading)
                                ? () async {
                                    setState(() {
                                      isButtonLoading = true;
                                    });

                                    final request = OTPRequestModel(
                                      email: emailController.text.trim(),
                                    );

                                    final result = await ref.read(
                                      sendOTPProvider(requestBody: request)
                                          .future,
                                    );

                                    setState(() {
                                      isButtonLoading = false;
                                    });

                                    if (result != null &&
                                        result.status == 200 &&
                                        context.mounted) {
                                      context.pop();
                                      _openOTPVerifyDrawer();
                                    }
                                  }
                                : null,
                            child: isButtonLoading
                                ? const SpinKitThreeBounce(
                                    color: Colors.white,
                                    size: 20,
                                  )
                                : const Text(
                                    'Send OTP',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                          ),
                        )
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

    return Scaffold(
      backgroundColor: ColorName.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 80, 20, 200),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FancyHeading(
                        title: "Sign",
                        subtitle: "In",
                      ),
                      Gap(30.h),
                      AppTextField(
                        label: "Email / Mobile No.",
                        controller: nameController,
                      ),
                      Gap(12.h),
                      AppTextField(
                        label: "Password",
                        controller: passwordController,
                        obscureText: true,
                      ),
                      Gap(10.h),
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () => _openEmailDrawer(),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: ColorName.black,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(15.h),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: (isFormValid || isLoading.value)
                              ? ColorName.themeColor
                              : ColorName.lightBackground2,
                          minimumSize: const Size(double.infinity, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: (!isFormValid || isLoading.value)
                            ? null
                            : () async {
                                if (nameController.text.isEmpty ||
                                    passwordController.text.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text("Please enter credentials")),
                                  );
                                  return;
                                }
                                isLoading.value = true;
                                final request = LoginRequestModel(
                                  name: nameController.text.trim(),
                                  password: passwordController.text.trim(),
                                );
                                final result = await ref.read(
                                  loginProvider(requestBody: request).future,
                                );
                                isLoading.value = false;
                                if (result != null &&
                                    result.status == 200 &&
                                    context.mounted) {
                                  ref
                                      .read(authTokenProvider.notifier)
                                      .saveToken(result.authToken!);
                                  HomeRoute().go(context);
                                }
                              },
                        child: isLoading.value
                            ? const SpinKitThreeBounce(
                                color: Colors.white,
                                size: 20,
                              )
                            : const Text(
                                'Sign In',
                                style: TextStyle(
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
                  height: 170,
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
                          'New here ?',
                          style: TextStyle(
                            fontSize: 15,
                            color: ColorName.white,
                            fontFamily: FontFamily.poppins,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Join now and experience\nseamless booking.',
                          style: TextStyle(
                            fontSize: 13,
                            color: ColorName.white.withAlpha(210),
                            fontFamily: FontFamily.poppins,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () => RegisterRoute().push(context),
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
                            "Sign Up",
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
                right: 0,
                bottom: 0,
                child: Assets.images.loginIcon.svg(
                  width: 200,
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
