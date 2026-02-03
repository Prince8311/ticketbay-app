import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/utils/private_routes.dart';
import 'package:ticket_bay/features/auth/data/datasources/auth_token_provider.dart';
import '../router/app_router.dart';

bool isPrivateRoute(String location) {
  for (final prefix in privateRoutePrefixes) {
    if (location == prefix || location.startsWith('$prefix/')) {
      return true;
    }
  }
  return false;
}

Future<String?> routeGuard(
  GoRouterState state,
  Ref ref,
) async {
  final location = state.uri.path;

  // Public route
  if (!isPrivateRoute(location)) {
    return null;
  }

  // Private route
  final token = await ref.read(authTokenProvider.notifier).getToken();
  if (token == null) {
    return RoutePath.login;
  }

  return null;
}
