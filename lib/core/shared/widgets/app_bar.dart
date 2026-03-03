import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/locations.dart';
import 'package:ticket_bay/features/home/presentation/providers/location_provider.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

PreferredSizeWidget primaryAppBar(userName) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(106),
    child: _PrimaryAppBarBody(userName: userName),
  );
}

class _PrimaryAppBarBody extends ConsumerStatefulWidget {
  final String? userName;
  const _PrimaryAppBarBody({this.userName});

  @override
  ConsumerState<_PrimaryAppBarBody> createState() => _PrimaryAppBarBodyState();
}

class _PrimaryAppBarBodyState extends ConsumerState<_PrimaryAppBarBody> {
  final List<String> animatedWords = [
    "movie name",
    "theater name",
  ];

  String displayText = "";
  int textIndex = 0;
  int charIndex = 0;
  bool isDeleting = false;
  bool _sheetOpened = false;
  Timer? _typewriterTimer;

  @override
  void initState() {
    super.initState();
    _startTypewriter();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final location = ref.read(locationProvider);

      if (!_sheetOpened && (location == null || location.isEmpty)) {
        _sheetOpened = true;
        _openLocationSheet();
      }
    });
  }

  void _startTypewriter() {
    _typewriterTimer =
        Timer.periodic(const Duration(milliseconds: 90), (timer) {
      if (!mounted) return; //
      final fullText = animatedWords[textIndex];
      setState(() {
        if (!isDeleting) {
          // typing
          if (charIndex < fullText.length) {
            charIndex++;
            displayText = fullText.substring(0, charIndex);
          } else {
            // pause before deleting
            Future.delayed(const Duration(milliseconds: 800), () {
              if (!mounted) return;
              isDeleting = true;
            });
          }
        } else {
          // deleting
          if (charIndex > 0) {
            charIndex--;
            displayText = fullText.substring(0, charIndex);
          } else {
            isDeleting = false;
            textIndex = (textIndex + 1) % animatedWords.length;
          }
        }
      });
    });
  }

  @override
  void dispose() {
    _typewriterTimer?.cancel();
    super.dispose();
  }

  void _openLocationSheet() {
    ref.read(locationSearchProvider.notifier).state = null;

    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      backgroundColor: ColorName.white,
      builder: (ctx) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom,
          ),
          child: FractionallySizedBox(
            heightFactor: 0.5,
            widthFactor: 1,
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 5,
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: ColorName.black3.withAlpha(120),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  Gap(10.h),
                  const Expanded(
                    child: LocationList(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ).whenComplete(() {
      ref.read(locationSearchProvider.notifier).state = null;
      _sheetOpened = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final location = ref.watch(locationProvider);

    // Listen changes to location and open sheet if no location
    ref.listen<String?>(locationProvider, (previous, next) {
      if (!_sheetOpened && (next == null || next.isEmpty)) {
        _sheetOpened = true;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) _openLocationSheet();
        });
      }
    });

    return AppBar(
      backgroundColor: ColorName.themeColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 15, 16, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //---------------------- FIRST LAYER ----------------------
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      widget.userName != null
                          ? "Hello, ${widget.userName}"
                          : "Hello, Guest",
                      style: const TextStyle(
                        fontSize: 16,
                        color: ColorName.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.poppins,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _openLocationSheet,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 70,
                        maxWidth: 100,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: ColorName.white,
                            size: 15,
                          ),
                          Gap(2.w),
                          Flexible(
                            child: Text(
                              location ?? "Location",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: ColorName.white,
                                fontSize: 12.5,
                                fontFamily: FontFamily.poppins,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(12.w),
                  const Icon(Icons.notifications_none,
                      color: ColorName.white, size: 23),
                ],
              ),

              Gap(12.h),

              //---------------------- SECOND LAYER ----------------------
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: ColorName.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorName.white.withOpacity(0.4),
                    width: 1,
                  ),
                ),
                height: 44,
                child: Row(
                  children: [
                    const Icon(Icons.search, color: ColorName.white),
                    Gap(10.w),

                    //------------------ TYPEWRITER TEXT ------------------
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "Search by ",
                            style: TextStyle(
                              color: ColorName.white.withOpacity(0.7),
                              fontFamily: FontFamily.poppins,
                            ),
                          ),
                          Text(
                            displayText,
                            style: TextStyle(
                              color: ColorName.white.withOpacity(0.7),
                              fontFamily: FontFamily.poppins,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget secondaryAppBar(
  String title, {
  bool leading = true,
}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(70),
    child: _SecondaryAppBarBody(
      title: title,
      leading: leading,
    ),
  );
}

class _SecondaryAppBarBody extends StatelessWidget {
  final String title;
  final bool leading;

  const _SecondaryAppBarBody({
    required this.title,
    this.leading = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorName.themeColor,
      elevation: 1,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: ColorName.white,
            fontSize: 16,
            fontFamily: FontFamily.poppins,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 8),
          child: Row(
            children: [
              if (leading)
                // ----------------- BACK BUTTON -----------------
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: ColorName.themeColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(120),
                        blurRadius: 7,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(
                        Icons.keyboard_arrow_left,
                        size: 28,
                        color: ColorName.white,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget commonAppBar(String title) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(65),
    child: _CommonAppBarBody(title: title),
  );
}

class _CommonAppBarBody extends ConsumerWidget {
  final String title;

  const _CommonAppBarBody({
    required this.title,
  });

  void _openLocationSheet(BuildContext context, WidgetRef ref) {
    ref.read(locationSearchProvider.notifier).state = null;

    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      backgroundColor: ColorName.white,
      builder: (ctx) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom,
          ),
          child: FractionallySizedBox(
            heightFactor: 0.5,
            widthFactor: 1,
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 5,
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: ColorName.black3.withAlpha(120),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  const Expanded(
                    child: LocationList(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ).whenComplete(() {
      ref.read(locationSearchProvider.notifier).state = null;
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = ref.watch(locationProvider);

    return AppBar(
      backgroundColor: ColorName.themeColor,
      elevation: 1,
      automaticallyImplyLeading: false,
      centerTitle: false,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 26, 16, 6),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: ColorName.white,
                    fontSize: 16,
                    fontFamily: FontFamily.poppins,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => _openLocationSheet(context, ref),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: ColorName.white,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 90),
                      child: Text(
                        location ?? "Location",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: ColorName.white,
                          fontSize: 14,
                          fontFamily: FontFamily.poppins,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
