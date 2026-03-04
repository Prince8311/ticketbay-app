import 'package:ticket_bay/core/api/end_points.dart';

const Set<String> privateApiEndpoints = {
  Endpoints.checkAuth,
  Endpoints.refreshToken,
  Endpoints.logout,
  Endpoints.commissions,
  Endpoints.seatReserve,
  Endpoints.paymentCredential,
  Endpoints.bookingList,
};

bool isPrivateApi(String path) {
  return privateApiEndpoints.contains(path);
}
