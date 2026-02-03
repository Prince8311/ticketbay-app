import 'package:flutter/material.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class FancyHeading extends StatelessWidget {
  const FancyHeading({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: title,
                  style: TextStyle(
                    fontFamily: FontFamily.oleoScript,
                    fontSize: 19,
                    color: ColorName.themeColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                WidgetSpan(
                  child: Gap(7.w),
                ),
                TextSpan(
                  text: subtitle[0].toUpperCase(),
                  style: TextStyle(
                      fontFamily: FontFamily.poppins,
                      fontSize: 19,
                      color: ColorName.black1,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic),
                ),
                if (subtitle.length > 1)
                  TextSpan(
                    text: subtitle.substring(1).toUpperCase(),
                    style: TextStyle(
                        fontFamily: FontFamily.poppins,
                        fontSize: 13,
                        color: ColorName.black1,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic),
                  ),
              ],
            ),
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  ColorName.transparent,
                  ColorName.themeColor,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ],
      ),
    );
  }
}
