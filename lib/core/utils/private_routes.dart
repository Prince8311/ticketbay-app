import 'package:ticket_bay/core/api/end_points.dart';
import 'package:ticket_bay/core/router/app_router.dart';

const Set<String> privateRoutePrefixes = {
  RoutePath.account,
};

const Set<String> privateApiEndpoints = {
  Endpoints.checkAuth,
  Endpoints.logout,
  Endpoints.commissions,
};
