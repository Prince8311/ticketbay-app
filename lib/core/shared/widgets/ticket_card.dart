import 'package:flutter/material.dart';
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
  final AssetGenImage image;
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
    required this.image,
    this.displayAll = false,
    this.isUpcoming = false,
    this.isCancelled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: displayAll ? 0 : 14,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * (displayAll ? 1 : 0.80),
        height: 105,
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
                  child: image.image(
                    width: 60,
                    height: 105,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width *
                          (displayAll ? 1 : 0.80) -
                      (displayAll ? 152 : 120),
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
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
                        const SizedBox(height: 4),
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
                        const SizedBox(height: 2),
                        Text("Class : $seatClass",
                            style: const TextStyle(
                                color: ColorName.black1,
                                fontFamily: FontFamily.poppins,
                                fontWeight: FontWeight.w500,
                                fontSize: 11)),
                        const SizedBox(height: 2),
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
                top: 25,
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
