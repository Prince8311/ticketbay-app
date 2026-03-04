import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/miscellaneous/app_extensions.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/api_list_widget.dart';
import 'package:ticket_bay/core/shared/widgets/app_bar.dart';
import 'package:ticket_bay/core/shared/widgets/loader.dart';
import 'package:ticket_bay/core/shared/widgets/ticket_card.dart';
import 'package:ticket_bay/features/account/presentation/providers/booking_list_provider.dart';
import 'package:ticket_bay/gen/colors.gen.dart';

class PreviousBookingsScreen extends HookConsumerWidget {
  const PreviousBookingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final bookingsState = ref.watch(bookingListProvider);
    final bookings = bookingsState.data?.list ?? [];

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(bookingTypeProvider.notifier).state = "previous";
      });
      return null;
    }, const []);

    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: secondaryAppBar("Previous Bookings"),
      body: SafeArea(
        child: Column(
          children: [
            Gap(10.h),

            /* ================= BOOKING LIST ================= */
            Expanded(
              child: Builder(builder: (context) {
                if (bookingsState.isLoading && bookings.isEmpty) {
                  return BookingListLoading();
                }

                if (bookingsState.error != null && bookings.isEmpty) {
                  return Center(
                    child: Text(
                      bookingsState.error!,
                      style: const TextStyle(color: Colors.red),
                    ),
                  );
                }

                return ApiGridWidget(
                  provider: bookingListProvider,
                  data: bookingsState,
                  pageProvider: bookingPageProvider,
                  canLoadMore: canLoadMoreBookingProvider,
                  scrollController: scrollController,
                  emptyCondition: !bookingsState.isLoading && bookings.isEmpty,
                  itemCount: bookings.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    final booking = bookings[index];

                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 16),
                      child: TicketCard(
                        movieName: booking.movieName ?? '',
                        date: booking.startDate ?? '',
                        time: booking.startTime ?? '',
                        seatClass: booking.section ?? '',
                        seats: booking.seats ?? '',
                        ticketId: booking.bookingId ?? '',
                        posterImage: booking.posterImage ?? '',
                        displayAll: true,
                        isCancelled: false,
                      ),
                    );
                  },
                );
              }),
            ),
            Gap(10.h),
          ],
        ),
      ),
    );
  }
}

class BookingListLoading extends StatelessWidget {
  const BookingListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
          child: SkeletonLoader(
            width: double.maxFinite,
            height: 100,
          ),
        );
      },
    );
  }
}
