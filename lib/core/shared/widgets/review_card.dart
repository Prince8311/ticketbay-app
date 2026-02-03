import 'package:flutter/material.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class ReviewCard extends StatelessWidget {
  // final AssetGenImage reviewerImage;
  // final String reviewerName;
  // final int rating;
  // final String date;
  // final String reviewText;
  final bool displayAll;

  const ReviewCard({
    super.key,
    // required this.reviewerImage,
    // required this.reviewerName,
    // required this.rating,
    // required this.date,
    // required this.reviewText,
    this.displayAll = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: displayAll ? 0 : 14,
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 12, 15, 12),
        width: MediaQuery.of(context).size.width * (displayAll ? 1 : 0.80),
        height: 105,
        decoration: BoxDecoration(
          color: ColorName.lightBackground3,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorName.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  padding: const EdgeInsets.all(2),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/profile-image.png",
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 7),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sourish Mondal',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12.5,
                            fontFamily: FontFamily.poppins,
                            fontWeight: FontWeight.w500,
                            color: ColorName.black,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        const SizedBox(height: 1),
                        Row(
                          children: [
                            Text(
                              '25 Nov, 2025',
                              style: TextStyle(
                                fontSize: 9,
                                fontFamily: FontFamily.poppins,
                                fontWeight: FontWeight.w500,
                                color: ColorName.black1,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              Icons.circle,
                              size: 5,
                              color: ColorName.black2,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '02:22 PM',
                              style: TextStyle(
                                fontSize: 9,
                                fontFamily: FontFamily.poppins,
                                fontWeight: FontWeight.w500,
                                color: ColorName.black1,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        size: 13,
                        color: ColorName.yellowColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 13,
                        color: ColorName.yellowColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 13,
                        color: ColorName.yellowColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 13,
                        color: ColorName.yellowColor,
                      ),
                      Icon(
                        Icons.star_half,
                        size: 13,
                        color: ColorName.yellowColor,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10.5,
                      fontFamily: FontFamily.poppins,
                      color: ColorName.black1,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
