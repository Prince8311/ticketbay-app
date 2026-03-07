import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/router/app_router.dart';
import 'package:ticket_bay/core/shared/helpers/local_storage.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/fancy_heading.dart';
import 'package:ticket_bay/core/shared/widgets/text_field.dart';
import 'package:ticket_bay/features/auth/domain/models/auth_model.dart';
import 'package:ticket_bay/features/auth/presentation/providers/auth_provider.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class ResetPasswordScreen extends HookConsumerWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    useListenable(passwordController);
    useListenable(confirmPasswordController);

    final isLoading = useState(false);
    final isFormValid = passwordController.text.trim().isNotEmpty &&
        confirmPasswordController.text.trim().isNotEmpty &&
        passwordController.text == confirmPasswordController.text;
    final isPasswordMatch =
        passwordController.text == confirmPasswordController.text;

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
                        title: "Reset",
                        subtitle: "Password",
                      ),
                      Gap(30.h),
                      AppTextField(
                        label: "New Password",
                        controller: passwordController,
                        obscureText: true,
                      ),
                      Gap(15.h),
                      AppTextField(
                        label: "Confirm Password",
                        controller: confirmPasswordController,
                        obscureText: true,
                      ),
                      if (confirmPasswordController.text.isNotEmpty &&
                          !isPasswordMatch)
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Passwords do not match",
                              style: TextStyle(
                                color: ColorName.redColor,
                                fontSize: 11,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                          ),
                        ),
                      Gap(30.h),
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
                                isLoading.value = true;
                                final localDB =
                                    await ref.read(localStorageProvider.future);
                                final email =
                                    await localDB.readData("reset_email");
                                final request = ResetPasswordModel(
                                  email: email,
                                  password: passwordController.text.trim(),
                                  confirmPassword:
                                      confirmPasswordController.text.trim(),
                                );
                                final result = await ref.read(
                                  resetPasswordProvider(requestBody: request)
                                      .future,
                                );
                                isLoading.value = false;
                                if (result != null &&
                                    result.status == 200 &&
                                    context.mounted) {
                                  LoginRoute().go(context);
                                }
                              },
                        child: isLoading.value
                            ? const SpinKitThreeBounce(
                                color: Colors.white,
                                size: 20,
                              )
                            : const Text(
                                'Submit',
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
