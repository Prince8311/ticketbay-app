import 'package:flutter/material.dart';
import 'package:ticket_bay/core/api/end_points.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/loader.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class TicketCard extends StatelessWidget {
  final String movieName;
  final String date;
  final String time;
  final String seatClass;
  final String seats;
  final String ticketId;
  final AssetGenImage? image;
  final String? posterImage;
  final bool displayAll;
  final bool isUpcoming;
  final bool isCancelled;

  const TicketCard({
    super.key,
    required this.movieName,
    required this.date,
    required this.time,
    required this.seatClass,
    required this.seats,
    required this.ticketId,
    this.image,
    this.posterImage,
    this.displayAll = false,
    this.isUpcoming = false,
    this.isCancelled = false,
  });

  String get _imageUrl {
    if (posterImage != null && posterImage!.isNotEmpty) {
      return '${Endpoints.moviePosterURL}/$posterImage';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: displayAll ? 0 : 14,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * (displayAll ? 1 : 0.80),
        height: 102,
        decoration: BoxDecoration(
          color:
              isUpcoming ? ColorName.yellowColor : ColorName.lightBackground2,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                // Left image
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                  ),
                  child: _buildImage(),
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width *
                          (displayAll ? 1 : 0.80) -
                      (displayAll ? 152 : 120),
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 9),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: ColorName.black2, width: 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movieName,
                          style: const TextStyle(
                            color: ColorName.black1,
                            fontFamily: FontFamily.poppins,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Gap(4.h),
                        Row(
                          children: [
                            Text(date,
                                style: const TextStyle(
                                    color: ColorName.black1,
                                    fontFamily: FontFamily.poppins,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11)),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: Icon(Icons.circle,
                                  size: 5, color: ColorName.black1),
                            ),
                            Text(time,
                                style: const TextStyle(
                                    color: ColorName.black1,
                                    fontFamily: FontFamily.poppins,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11)),
                          ],
                        ),
                        Gap(1.h),
                        Text("Class : $seatClass",
                            style: const TextStyle(
                                color: ColorName.black1,
                                fontFamily: FontFamily.poppins,
                                fontWeight: FontWeight.w500,
                                fontSize: 11)),
                        Gap(1.h),
                        Text(
                          "Seats : $seats",
                          style: const TextStyle(
                              color: ColorName.black1,
                              fontFamily: FontFamily.poppins,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  width: 20,
                ),
                // Ticket ID area
                Container(
                  width: 40,
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        ticketId,
                        style: const TextStyle(
                          color: ColorName.black1,
                          fontSize: 15,
                          fontFamily: FontFamily.oswald,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 48,
              top: 16,
              bottom: 12,
              child: SizedBox(
                width: 1,
                child: CustomPaint(
                  painter: _DashedLinePainter(
                      color: displayAll
                          ? ColorName.white
                          : ColorName.lightBackground3,
                      gap: 6),
                ),
              ),
            ),
            Positioned(
              right: 35,
              top: -16,
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color:
                      displayAll ? ColorName.white : ColorName.lightBackground3,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              right: 35,
              bottom: -16,
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color:
                      displayAll ? ColorName.white : ColorName.lightBackground3,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            if (isCancelled)
              Positioned(
                top: 22,
                right: 60,
                child: Transform.rotate(
                  angle: -0.40,
                  child: Assets.images.cancelTag.image(
                    width: 90,
                    fit: BoxFit.contain,
                  ),
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
        width: 60,
        height: 102,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => _fallbackImage(),
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return SizedBox(
            width: 60,
            height: 102,
            child: SkeletonLoader(
              width: 60,
              height: 102,
            ),
          );
        },
      );
    }

    if (image != null) {
      return image!.image(
        width: 60,
        height: 102,
        fit: BoxFit.cover,
      );
    }

    return _fallbackImage();
  }

  Widget _fallbackImage() {
    return Assets.images.movie1.image(
      width: 60,
      height: 102,
      fit: BoxFit.cover,
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  final Color color;
  final double gap;
  final double strokeWidth;
  _DashedLinePainter({
    this.color = ColorName.lightBackground3,
    this.gap = 6,
    // ignore: unused_element
    this.strokeWidth = 2,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    double y = 0;
    final totalHeight = size.height;
    while (y < totalHeight) {
      canvas.drawLine(Offset(0, y), Offset(0, y + strokeWidth * 1.0), paint);
      y += strokeWidth + gap;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
