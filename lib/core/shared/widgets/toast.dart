import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';

void Function() errorToast(
  String? title, {
  String? message,
  Widget? icon,
  Duration? duration,
  bool dissmissable = true,
}) {
  return BotToast.showCustomNotification(
    duration: duration ?? const Duration(seconds: kReleaseMode ? 3 : 20),
    enableSlideOff: dissmissable,
    toastBuilder: (cancelFunc) => Container(
      // height: 64,
      decoration: BoxDecoration(
        color: const Color(0xFFFFD8CB),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          icon ??
              Icon(
                FlutterRemix.close_line,
                color: ColorName.redColor,
              ),
          const Gap(12),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title == null
                    ? const SizedBox()
                    : Text(
                        title,
                        maxLines: 10,
                        style: TextStyle(
                          fontWeight: message == null
                              ? FontWeight.w600
                              : FontWeight.w900,
                        ),
                      ),
                message == null
                    ? const SizedBox()
                    : Text(
                        message,
                        overflow: TextOverflow.ellipsis,
                        maxLines: kReleaseMode ? 4 : 10,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

void Function()? successToast(
  String? title, {
  String? message,
  Widget? icon,
  Duration? duration,
}) {
  if (title == null) return null;
  return BotToast.showCustomNotification(
    duration: duration ?? const Duration(seconds: 3),
    toastBuilder: (cancelFunc) => Container(
      decoration: BoxDecoration(
        color: const Color(0xFFDAF2E1),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          icon ??
              Assets.images.checkmark.svg(
                width: 24,
                height: 24,
              ), // ?? Assets.icons.verifiedGreen.svg(),
          const Gap(12),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontWeight:
                          message == null ? FontWeight.w600 : FontWeight.w900,
                      fontSize: 14),
                ),
                message != null
                    ? Text(
                        message,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
