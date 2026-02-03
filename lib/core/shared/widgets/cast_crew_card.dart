import 'package:flutter/material.dart';
import 'package:ticket_bay/core/api/end_points.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/loader.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class CastCrewCard extends StatelessWidget {
  final String imageUrl;
  final String name;

  const CastCrewCard({
    super.key,
    required this.imageUrl,
    required this.name,
  });

  String get _imageUrl {
    if (imageUrl.isNotEmpty) {
      return '${Endpoints.castCrewImageURL}/$imageUrl';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6), // card width (adjustable)
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // IMAGE BOX
          Container(
            height: 75,
            width: 75,
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ColorName.black2.withOpacity(0.2)),
            ),
            clipBehavior: Clip.antiAlias,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: _buildImage(),
            ),
          ),

          Gap(4.h),

          // NAME TEXT
          SizedBox(
            width: 75,
            child: Text(
              name,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 9.5,
                fontFamily: FontFamily.poppins,
                fontWeight: FontWeight.w500,
                color: ColorName.black1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    if (imageUrl.isNotEmpty) {
      return Image.network(
        _imageUrl,
        width: 67,
        height: 67,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => _fallbackImage(),
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return SkeletonLoader(
            width: 67,
            height: 67,
          );
        },
      );
    }

    return _fallbackImage();
  }

  Widget _fallbackImage() {
    return Assets.images.actor.image(
      width: 67,
      height: 67,
      fit: BoxFit.cover,
    );
  }
}
