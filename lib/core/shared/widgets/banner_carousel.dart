// lib/core/shared/widgets/banner_carousel.dart
import 'package:flutter/material.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

/// BannerCarousel kept in the same shape as your original OffersCarousel:
/// - headerTitle optional (uses PrimaryHeader)
/// - headerActions
/// - data: List<Widget> (so you can pass BannerItemWidget instances)
class BannerCarousel extends StatelessWidget {
  BannerCarousel({
    super.key,
    this.headerActions = const [],
    required this.data,
  });

  final CarouselController _carouselController = CarouselController();
  final List<Widget> headerActions;
  final List<Widget> data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        children: [
          SizedBox(
            width: 1.sw,
            height: 210.h,
            child: CarouselView(
              itemExtent: .8.sw,
              controller: _carouselController,
              children: _carouselItems(data),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _carouselItems(List<Widget> data) {
    return List.generate(
      data.length,
      (index) => Container(
        margin: const EdgeInsets.all(4),
        child: SizedBox(
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: data[
                index], // expects each item to be a widget (BannerItemWidget)
          ),
        ),
      ),
    );
  }
}

class BannerItemWidget extends StatelessWidget {
  final AssetGenImage image;
  final String title;
  final String subtitle;

  const BannerItemWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // background image (from generated AssetGenImage)
        Positioned.fill(
          child: image.image(
            fit: BoxFit.cover,
          ),
        ),

        // gradient overlay (left -> right, dark -> transparent)
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.black87,
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),

        // text block (bottom-left, column aligned)
        Positioned(
          left: 22,
          right: 22,
          bottom: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // headline (single line)
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: ColorName.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  fontFamily: FontFamily.oleoScript,
                  height: 1.1,
                ),
              ),
              Gap(10.h),
              // paragraph (max 2 lines)
              Text(
                subtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: ColorName.white.withOpacity(0.9),
                  fontSize: 12,
                  fontFamily: FontFamily.poppins,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
