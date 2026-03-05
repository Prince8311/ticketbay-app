import 'package:flutter/material.dart';
import 'package:ticket_bay/core/api/end_points.dart';
import 'package:ticket_bay/core/router/app_router.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/loader.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class MovieCard extends StatelessWidget {
  final AssetGenImage? imageAsset;
  final String? posterImage;
  final String rating;
  final String user;
  final String title;
  final bool displayAll;
  final bool isUpcoming;

  const MovieCard({
    super.key,
    this.imageAsset,
    this.posterImage,
    required this.rating,
    required this.user,
    required this.title,
    this.displayAll = false,
    this.isUpcoming = false,
  });

  String get _imageUrl {
    if (posterImage != null && posterImage!.isNotEmpty) {
      return '${Endpoints.moviePosterURL}/$posterImage';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => MovieDetailsRoute(movieName: title, isUpcoming: isUpcoming)
          .push(context),
      child: Padding(
        padding: EdgeInsets.only(right: displayAll ? 0 : 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: _buildImage(),
            ),
            Gap(7.h),
            Row(
              children: [
                const Icon(Icons.star, size: 13, color: ColorName.yellowColor),
                Gap(1.h),
                Text(
                  rating,
                  style: const TextStyle(
                      fontSize: 11,
                      fontFamily: FontFamily.poppins,
                      fontWeight: FontWeight.w500,
                      color: ColorName.black1),
                ),
                Text(
                  " - (${user})",
                  style: const TextStyle(
                      fontSize: 11,
                      fontFamily: FontFamily.poppins,
                      fontWeight: FontWeight.w500,
                      color: ColorName.black1),
                ),
              ],
            ),
            Gap(3.h),
            SizedBox(
              width: displayAll ? double.maxFinite : 110,
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 12,
                    fontFamily: FontFamily.poppins,
                    fontWeight: FontWeight.w500,
                    color: ColorName.black,
                    height: 1.25),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    if (posterImage != null && posterImage!.isNotEmpty) {
      return Image.network(
        _imageUrl,
        width: displayAll ? double.maxFinite : 110,
        height: 155,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => _fallbackImage(),
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return SizedBox(
            width: displayAll ? double.maxFinite : 110,
            height: 155,
            child: SkeletonLoader(
              width: 110,
              height: 30,
            ),
          );
        },
      );
    }

    if (imageAsset != null) {
      return imageAsset!.image(
        width: displayAll ? double.maxFinite : 110,
        height: 155,
        fit: BoxFit.cover,
      );
    }

    return _fallbackImage();
  }

  Widget _fallbackImage() {
    return Assets.images.movie1.image(
      width: displayAll ? double.maxFinite : 110,
      height: 155,
      fit: BoxFit.cover,
    );
  }
}
