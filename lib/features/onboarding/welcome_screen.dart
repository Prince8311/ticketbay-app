import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ticket_bay/core/router/app_router.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class WelcomeScreen extends HookWidget {
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentIndex = useState(0);
    final images = [
      Assets.images.slide1,
      Assets.images.slide2,
      Assets.images.slide3,
    ];

    final size = MediaQuery.of(context).size;
    final phoneWidth = MediaQuery.of(context).size.width * 0.80;
    final phoneHeight = MediaQuery.of(context).size.height * 0.80;

    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: _BottomCurveClipper(),
            child: Container(
              height: size.height * 0.84,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorName.lightBackground1,
                    ColorName.lightBackground2
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 110,
                    left: 35,
                    right: 35,
                    child: Container(
                      height: phoneHeight * 0.88,
                      width: size.width * 0.8 * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          color: Colors.black,
                          width: 10, // phone bezel thickness
                        ),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: PageView.builder(
                          controller: pageController,
                          itemCount: images.length,
                          onPageChanged: (index) {
                            currentIndex.value = index;
                          },
                          itemBuilder: (context, index) {
                            return images[index].image(
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            );
                          },
                        ),
                      ),
                    ),
                  ),

                  // FRONT CAMERA + SPEAKER
                  Positioned(
                    top: 112,
                    left: phoneWidth * 0.35,
                    right: phoneWidth * 0.35,
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Speaker
                          Container(
                            width: 60,
                            height: 4,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          const SizedBox(width: 16),

                          // Front camera
                          Container(
                            width: 9,
                            height: 9,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey.shade700,
                                width: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// Right side → Power
                  Positioned(
                    top: 235,
                    right: 30,
                    child: Container(
                      width: 6,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),

                  /// Left side → Volume Up
                  Positioned(
                    top: 220,
                    left: 30,
                    child: Container(
                      width: 6,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),

                  /// Left side → Volume Down
                  Positioned(
                    top: 290,
                    left: 30,
                    child: Container(
                      width: 6,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),

                  /// Skip all button
                  Positioned(
                    top: 45,
                    right: 15,
                    child: ElevatedButton(
                      onPressed: () {
                        HomeRoute().go(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorName.white.withAlpha(50),
                        foregroundColor: ColorName.black2,
                        elevation: 0,
                        minimumSize: const Size(0, 36),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: const BorderSide(
                            color: ColorName.black2,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            "Skip all",
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: FontFamily.poppins,
                                fontWeight: FontWeight.w500,
                                height: 1),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.keyboard_double_arrow_right,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              images.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: currentIndex.value == index ? 30 : 10,
                height: 10,
                decoration: BoxDecoration(
                  color: currentIndex.value == index
                      ? ColorName.themeColor
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorName.themeColor,
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                if (currentIndex.value == images.length - 1) {
                  HomeRoute().go(context);
                } else {
                  pageController.animateToPage(
                    currentIndex.value + 1,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Text(
                currentIndex.value == images.length - 1
                    ? "Get Started"
                    : "Next",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: FontFamily.poppins,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height - 80);

    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 80,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
