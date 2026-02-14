class BookingPriceBreakdown {
  final double ticketTotal;
  final double baseAmount;
  final double gstAmount;
  final double convenienceFees;
  final double orderTotal;

  const BookingPriceBreakdown({
    required this.ticketTotal,
    required this.baseAmount,
    required this.gstAmount,
    required this.convenienceFees,
    required this.orderTotal,
  });
}

BookingPriceBreakdown calculateBookingPrice({
  required int seatCount,
  required int? seatPrice,
  required int? adminCommission,
}) {
  final pricePerSeat = (seatPrice ?? 0).toDouble();
  final commissionPerSeat = (adminCommission ?? 0).toDouble();
  final ticketTotal = seatCount * pricePerSeat;
  final baseAmount = seatCount * commissionPerSeat;
  final gstAmount = baseAmount * 0.18;
  final convenienceFees = baseAmount + gstAmount;
  final orderTotal = ticketTotal + convenienceFees;

  return BookingPriceBreakdown(
    ticketTotal: ticketTotal,
    baseAmount: baseAmount,
    gstAmount: gstAmount,
    convenienceFees: convenienceFees,
    orderTotal: orderTotal,
  );
}
