import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/widgets/app_bar.dart';
import 'package:ticket_bay/core/shared/widgets/ticket_card.dart';
import 'package:ticket_bay/gen/assets.gen.dart';
import 'package:ticket_bay/gen/colors.gen.dart';

class CancelledBookingsScreen extends HookConsumerWidget {
  const CancelledBookingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: secondaryAppBar("Cancelled Bookings"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10), // BEFORE LIST

              ...List.generate(8, (index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                  child: TicketCard(
                    movieName: "Avatar: The Way of Water",
                    date: "25 Oct, 2025",
                    time: "8:30 PM",
                    seatClass: "Premium",
                    seats: "A-1, A-2, A-3",
                    ticketId: "TKB894571",
                    image: Assets.images.movie1,
                    displayAll: true,
                    isCancelled: true,
                  ),
                );
              }),

              const SizedBox(height: 10), // AFTER LIST
            ],
          ),
        ),
      ),
    );
  }
}
