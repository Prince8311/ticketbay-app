import 'package:flutter/material.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class TheaterCard extends StatelessWidget {
  final AssetGenImage image;
  final String name;

  const TheaterCard({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        image.image(
          width: double.maxFinite,
          height: 80,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 8),
        Text(
          name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            fontFamily: FontFamily.poppins,
            fontWeight: FontWeight.w500,
            color: ColorName.black1,
            height: 1.25,
          ),
        ),
      ],
    );
  }
}
