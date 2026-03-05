import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/api/end_points.dart';
import 'package:ticket_bay/core/router/app_router.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/app_bar.dart';
import 'package:ticket_bay/core/shared/widgets/loader.dart';
import 'package:ticket_bay/features/auth/presentation/providers/auth_provider.dart';
import 'package:ticket_bay/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class AccountScreen extends HookConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authToken = ref.watch(authTokenProvider);
    final userAsync = authToken != null ? ref.watch(userDetailsProvider) : null;

    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: secondaryAppBar("My Account", leading: false),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 18, 16, 10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorName.white,
                    border: Border.all(color: ColorName.black.withAlpha(30)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: ColorName.black.withAlpha(30),
                        offset: Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: userAsync?.when(
                    loading: () => ProfileLoading(),
                    error: (e, _) => Center(child: Text(e.toString())),
                    data: (data) {
                      return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 13, 24, 13),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorName.white,
                                    border: Border.all(
                                      color: ColorName.borderColor,
                                      width: 1,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(3),
                                  child: ClipOval(
                                    child: Image.network(
                                      '${Endpoints.profileImageURL}/${data?.image}',
                                      width: 68,
                                      height: 68,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Gap(16.w),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data?.name ?? '-',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: FontFamily.poppins,
                                            fontWeight: FontWeight.w500,
                                            color: ColorName.black),
                                      ),
                                      Gap(10.h),
                                      Text(
                                        data?.phone ?? '-',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          height: 1,
                                          fontSize: 13,
                                          fontFamily: FontFamily.poppins,
                                          fontWeight: FontWeight.w400,
                                          color: ColorName.black1,
                                        ),
                                      ),
                                      Gap(2.h),
                                      Text(
                                        data?.email ?? '-',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: FontFamily.poppins,
                                          fontWeight: FontWeight.w400,
                                          color: ColorName.black1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
              AccountOptionsGroup(
                title: "My Profile",
                accountOptions: [
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.manage_accounts,
                        size: 21,
                        color: ColorName.black1,
                      ),
                      title: "Update Profile",
                      onPressed: () {},
                    ),
                  ),
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.mail,
                        size: 18,
                        color: ColorName.black1,
                      ),
                      title: "Change Email address",
                      onPressed: () {},
                    ),
                  ),
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.lock_person,
                        size: 20,
                        color: ColorName.black1,
                      ),
                      title: "Change Password",
                      onPressed: () {},
                    ),
                  ),
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.article,
                        size: 19,
                        color: ColorName.black1,
                      ),
                      title: "My Reviews",
                      onPressed: () {},
                    ),
                  ),
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.business,
                        size: 20,
                        color: ColorName.black1,
                      ),
                      title: "List Theater",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              AccountOptionsGroup(
                title: "My Booking List",
                accountOptions: [
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.local_play,
                        size: 21,
                        color: ColorName.black1,
                      ),
                      title: "Upcoming Bookings",
                      onPressed: () => UpcomingBookingsRoute().push(context),
                    ),
                  ),
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.confirmation_number,
                        size: 21,
                        color: ColorName.black1,
                      ),
                      title: "Previous Bookings",
                      onPressed: () => PreviousBookingsRoute().push(context),
                    ),
                  ),
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.do_disturb_alt,
                        size: 21,
                        color: ColorName.black1,
                      ),
                      title: "Cancelled Bookings",
                      onPressed: () => CancelledBookingsRoute().push(context),
                    ),
                  ),
                ],
              ),
              AccountOptionsGroup(
                title: "Help Center",
                accountOptions: [
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.help,
                        size: 21,
                        color: ColorName.black1,
                      ),
                      title: "FAQ's",
                      onPressed: () => FaqRoute().push(context),
                    ),
                  ),
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.headset_mic,
                        size: 20,
                        color: ColorName.black1,
                      ),
                      title: "Contact Us",
                      onPressed: () => ContactRoute().push(context),
                    ),
                  ),
                ],
              ),
              AccountOptionsGroup(
                title: "Rules & Regulations",
                accountOptions: [
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.description,
                        size: 20,
                        color: ColorName.black1,
                      ),
                      title: "Terms & Conditions",
                      onPressed: () => TermsConditionsRoute().push(context),
                    ),
                  ),
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.privacy_tip,
                        size: 20,
                        color: ColorName.black1,
                      ),
                      title: "Privacy Policy",
                      onPressed: () => PrivacyPolicyRoute().push(context),
                    ),
                  ),
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.paid,
                        size: 20,
                        color: ColorName.black1,
                      ),
                      title: "Cancellation & Refund Policy",
                      onPressed: () => RefundPolicyRoute().push(context),
                    ),
                  ),
                ],
              ),
              AccountOptionsGroup(
                title: "Account",
                accountOptions: [
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.delete,
                        size: 20,
                        color: ColorName.redColor,
                      ),
                      title: "Delete My Account",
                      onPressed: () {},
                    ),
                  ),
                  AccountOptionItem(
                    option: AccountOption(
                      icon: Icon(
                        Icons.logout,
                        size: 19,
                        color: ColorName.redColor,
                      ),
                      title: "Sign Out",
                      onPressed: () async {
                        final result = await ref.read(logoutProvider.future);
                        if (result?.status == 200 && context.mounted) {
                          HomeRoute().go(context);
                        }
                      },
                    ),
                  ),
                ],
              ),
              Gap(12.h)
            ],
          ),
        ),
      ),
    );
  }
}

class AccountOption {
  const AccountOption({
    required this.icon,
    required this.title,
    required this.onPressed,
  });
  final Widget icon;
  final String title;
  final VoidCallback onPressed;
}

class AccountOptionsGroup extends StatelessWidget {
  const AccountOptionsGroup({
    super.key,
    required this.title,
    required this.accountOptions,
  });
  final String title;
  final List<AccountOptionItem> accountOptions;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      padding: EdgeInsets.only(bottom: 2.h),
      decoration: BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: ColorName.black.withAlpha(30),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: ColorName.black.withAlpha(30),
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorName.yellowColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(9),
                topRight: Radius.circular(9),
              ),
            ),
            padding: EdgeInsets.fromLTRB(17, 10, 14, 9),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: FontFamily.poppins,
                  fontWeight: FontWeight.w600,
                  color: ColorName.black,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Gap(2.h),
          Column(
            children: List.generate(accountOptions.length, (index) {
              final item = accountOptions[index];
              return Column(
                children: [
                  item,
                  if (index != accountOptions.length - 1)
                    Divider(
                      height: 1,
                      color: ColorName.black.withAlpha(30),
                    ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}

class AccountOptionItem extends StatelessWidget {
  const AccountOptionItem({
    super.key,
    required this.option,
    this.showArrow = true,
  });
  final AccountOption option;
  final bool showArrow;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: option.onPressed,
      child: Padding(
        padding: EdgeInsets.fromLTRB(14, 11, 18, 11),
        child: Row(
          children: [
            SizedBox(
              width: 16,
              child: option.icon,
            ),
            Gap(14.w),
            Text(
              option.title,
              style: TextStyle(
                fontSize: 13,
                fontFamily: FontFamily.poppins,
                fontWeight: FontWeight.w500,
                color: ColorName.black1,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 14,
              color: ColorName.black1,
            )
          ],
        ),
      ),
    );
  }
}

class ProfileLoading extends StatelessWidget {
  const ProfileLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SkeletonLoader(
          width: 67,
          height: 67,
        ),
      ],
    );
  }
}
