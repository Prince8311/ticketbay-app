import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/loader.dart';
import 'package:ticket_bay/features/home/presentation/providers/location_provider.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class LocationList extends HookConsumerWidget {
  const LocationList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLocation = ref.watch(locationProvider);
    final width = MediaQuery.of(context).size.width;
    final itemWidth = (width - 64) / 3;
    final searchController = useTextEditingController();
    final searchQuery = ref.watch(locationSearchProvider);
    useEffect(() {
      void listener() {
        ref.read(locationSearchProvider.notifier).state =
            searchController.text.isEmpty ? null : searchController.text;
      }

      searchController.addListener(listener);
      return () => searchController.removeListener(listener);
    }, [searchController]);
    final locationsAsync = ref.watch(locationListProvider(search: searchQuery));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: ColorName.borderColor,
              width: 1,
            ),
          ),
          height: 44,
          child: Row(
            children: [
              const Icon(Icons.search, color: ColorName.black3),
              Gap(12.w),
              Expanded(
                child: TextField(
                  controller: searchController,
                  style: const TextStyle(
                    fontSize: 13,
                    color: ColorName.black1,
                    fontFamily: FontFamily.poppins,
                  ),
                  cursorColor: ColorName.themeColor,
                  decoration: const InputDecoration(
                    hintText: 'Search your location...',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      fontFamily: FontFamily.poppins,
                      color: ColorName.black3,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                  ),
                ),
              )
            ],
          ),
        ),
        Gap(20.h),
        Expanded(
          child: locationsAsync.when(
            loading: () => const LocationListLoading(),
            error: (err, _) => Center(child: Text(err.toString())),
            data: (data) {
              if (data.isEmpty) {
                return const Center(
                    child: Text(
                  "No locations found",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: FontFamily.poppins,
                      color: ColorName.black3),
                ));
              }
              final displayCities = data.take(12).toList();
              return SingleChildScrollView(
                child: Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: displayCities.map((city) {
                    final location = city.name ?? '';
                    final isSelected = location == selectedLocation;
                    return GestureDetector(
                      onTap: () async {
                        await ref
                            .read(locationProvider.notifier)
                            .setLocation(location);
                        Navigator.pop(context, location);
                      },
                      child: Container(
                        width: itemWidth,
                        padding: const EdgeInsets.fromLTRB(14, 16, 14, 10),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? ColorName.themeColor
                              : ColorName.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: isSelected
                                ? ColorName.themeColor
                                : ColorName.themeColor.withAlpha(80),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Flutter-generated icon
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? ColorName.white
                                    : ColorName.themeColor.withAlpha(30),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: SizedBox(
                                  height: 27,
                                  width: 27,
                                  child: Assets.images.city.svg(
                                    fit: BoxFit.contain,
                                    colorFilter: const ColorFilter.mode(
                                      ColorName.themeColor,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Gap(8),
                            Text(
                              location,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13,
                                color: isSelected
                                    ? ColorName.white
                                    : ColorName.black1,
                                fontFamily: FontFamily.poppins,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class LocationListLoading extends StatelessWidget {
  const LocationListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final itemWidth = (width - 64) / 3;

    return SingleChildScrollView(
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: List.generate(9, (_) {
          return Container(
            width: itemWidth,
            padding: const EdgeInsets.fromLTRB(14, 16, 14, 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: ColorName.borderColor,
              ),
            ),
            child: Column(
              children: [
                SkeletonLoader(
                  width: 55,
                  height: 55,
                ),
                SkeletonLoader(
                  width: 80,
                  height: 14,
                  margin: EdgeInsets.only(top: 10),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
