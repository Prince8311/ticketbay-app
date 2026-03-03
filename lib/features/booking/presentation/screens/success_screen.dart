import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/router/app_router.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class BookingSuccessScreen extends HookConsumerWidget {
  const BookingSuccessScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = useState(3);

    useEffect(() {
      final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (counter.value == 0) {
          timer.cancel();

          HomeRoute().go(context);
        } else {
          counter.value--;
        }
      });

      return timer.cancel;
    }, []);

    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.success.image(width: 250),
            Text(
              "!! Thank You !!",
              style: TextStyle(
                color: ColorName.black1,
                fontSize: 18,
                height: 1,
                fontFamily: FontFamily.oleoScript,
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(8.h),
            Text(
              "Your booking is comfirmed.",
              style: TextStyle(
                color: ColorName.greenColor,
                fontSize: 13.5,
                fontFamily: FontFamily.poppins,
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(3.h),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: FontFamily.poppins,
                ),
                children: [
                  TextSpan(
                    text: "Redirecting to home screen in ",
                    style: TextStyle(color: ColorName.black2),
                  ),
                  TextSpan(
                    text: "${counter.value}s",
                    style: TextStyle(
                      color: ColorName.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
