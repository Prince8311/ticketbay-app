import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/router/app_router.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

enum MenuLabel { home, movies, theater, account }

class BottomNavScreen extends ConsumerStatefulWidget {
  final StatefulNavigationShell child;
  const BottomNavScreen({
    super.key,
    required this.child,
  });

  @override
  ConsumerState<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends ConsumerState<BottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      body: widget.child,
      bottomNavigationBar: bottomNavBar().animate().slideY(begin: 1, end: 0),
    );
  }

  Widget bottomNavBar() {
    return Consumer(
      builder: (context, ref, child) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: kBottomNavigationBarHeight +
                MediaQuery.viewPaddingOf(context).bottom,
            maxHeight: kBottomNavigationBarHeight +
                MediaQuery.viewPaddingOf(context).bottom,
          ),
          child: CustomBottomNavBar(
            selectedIndex: _currentIndex,
            bottomNavItems: _destinations(),
            onChange: (index) => _onDestinationSelected(index),
            divider: const Divider(
              height: 0.5,
              thickness: 1,
              color: Color(0xFFEEEEEE),
            ),
          ),
        );
      },
    );
  }

  List<BottomNavItem> _destinations() {
    return [
      BottomNavItem(
        label: 'Home',
        icon: Icon(Icons.home),
        initialLocation: RoutePath.home,
      ),
      BottomNavItem(
        label: 'Movies',
        icon: Icon(Icons.movie),
        initialLocation: RoutePath.movies,
      ),
      BottomNavItem(
        label: 'Theaters',
        icon: Icon(Icons.theaters),
        initialLocation: RoutePath.theaters,
      ),
      BottomNavItem(
        label: 'Account',
        icon: Icon(Icons.person),
        initialLocation: RoutePath.account,
      ),
    ];
  }

  int _locationToTabIndex(String location) {
    final index = _destinations()
        .indexWhere((element) => location.startsWith(element.initialLocation));
    return index < 0 ? 0 : index;
  }

  int get _currentIndex =>
      _locationToTabIndex(GoRouterState.of(context).matchedLocation);

  void _onDestinationSelected(int index) {
    if (_currentIndex == index) {
      debugPrint("_currentIndex == index");
      return;
    }
    if (_currentIndex != index) {
      context.go(_destinations()[index].initialLocation);
    }
  }
}

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    this.divider,
    this.color,
    this.topPadding = 15,
    this.bottomPadding = 15,
    required this.bottomNavItems,
    this.onChange,
  });
  final int selectedIndex;
  final void Function(int index)? onChange;
  final Widget? divider;
  final Color? color;
  final double topPadding;
  final double bottomPadding;
  final List<BottomNavItem> bottomNavItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(8, 0),
            blurRadius: 20,
            color: ColorName.themeColor.withAlpha(35),
            spreadRadius: 2,
          ),
        ],
      ),
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // divider ?? const SizedBox(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: bottomNavItems.asMap().entries.map(
              (entry) {
                final index = entry.key;
                final e = entry.value;

                return Expanded(
                  child: InkWell(
                    onTap: () => onChange?.call(index),
                    child: SizedBox(
                      width: double.infinity,
                      child: BottomNavItemWidget(
                        icon: e.icon,
                        initialLocation: e.initialLocation,
                        selected: index == selectedIndex,
                        label: e.label,
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }

  String getMenuLabel(MenuLabel? label) {
    return switch (label) {
      MenuLabel.home => 'Home',
      MenuLabel.movies => 'Movies',
      MenuLabel.theater => 'Theater',
      MenuLabel.account => 'Account',
      _ => '-',
    };
  }
}

class BottomNavItem {
  final Widget icon;
  final String initialLocation;
  final String label;

  BottomNavItem({
    required this.icon,
    required this.initialLocation,
    required this.label,
  });
}

class BottomNavItemWidget extends StatelessWidget {
  const BottomNavItemWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.initialLocation,
    required this.selected,
  });
  final Widget icon;
  final String label;
  final String initialLocation;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(4, 0, 4, 4),
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: 6,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: selected ? ColorName.themeColor : ColorName.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
          Gap(6.h),
          IconTheme(
            data: IconThemeData(
              color: selected ? ColorName.themeColor : ColorName.black2,
              size: 24,
            ),
            child: icon,
          ),
          Gap(2.h),
          Text(
            label,
            style: TextStyle(
              fontSize: 11.h,
              fontFamily: FontFamily.poppins,
              color: selected ? ColorName.themeColor : ColorName.black2,
            ),
          ),
        ],
      ),
    );
  }
}
