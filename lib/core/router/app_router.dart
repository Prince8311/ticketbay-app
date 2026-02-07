import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_bay/core/shared/widgets/bottom_nav_bar.dart';

// UI Screens
import 'package:ticket_bay/features/onboarding/splash_screen.dart';
import 'package:ticket_bay/features/onboarding/welcome_screen.dart';
import 'package:ticket_bay/features/auth/presentation/screens/login_screen.dart';
import 'package:ticket_bay/features/auth/presentation/screens/register_screen.dart';
import 'package:ticket_bay/features/auth/presentation/screens/reset_password.dart';
import 'package:ticket_bay/features/home/presentation/screens/home_screen.dart';
import 'package:ticket_bay/features/movie/presentation/screens/movies_screen.dart';
import 'package:ticket_bay/features/movie/presentation/screens/coming_soon_movies_screen.dart';
import 'package:ticket_bay/features/movie/presentation/screens/upcoming_movies_screen.dart';
import 'package:ticket_bay/features/movie/presentation/screens/movie_details_screen.dart';
import 'package:ticket_bay/features/movie/presentation/screens/movie_info_screen.dart';
import 'package:ticket_bay/features/movie/presentation/screens/reviews_screen.dart';
import 'package:ticket_bay/features/theater/presentation/screens/theater_info_screen.dart';
import 'package:ticket_bay/features/theater/presentation/screens/theaters_screen.dart';
import 'package:ticket_bay/features/booking/presentation/screens/seat_layout_screen.dart';
import 'package:ticket_bay/features/account/presentation/screens/account_screen.dart';
import 'package:ticket_bay/features/account/presentation/screens/booking_history/upcoming_booking_screen.dart';
import 'package:ticket_bay/features/account/presentation/screens/booking_history/previous_booking_screen.dart';
import 'package:ticket_bay/features/account/presentation/screens/booking_history/cancelled_booking_screen.dart';
import 'package:ticket_bay/features/account/presentation/screens/help_center/faq_screen.dart';
import 'package:ticket_bay/features/account/presentation/screens/help_center/contact_screen.dart';
import 'package:ticket_bay/features/account/presentation/screens/rules_regulations/terms_conditions_screen.dart';
import 'package:ticket_bay/features/account/presentation/screens/rules_regulations/privacy_policy_screen.dart';
import 'package:ticket_bay/features/account/presentation/screens/rules_regulations/refund_policy_screen.dart';
import 'package:ticket_bay/features/onboarding/maintenance_screen.dart';

part 'app_router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

class RoutePath {
  static const String initial = '/';
  static const String welcome = '/welcome';

  // auth screens
  static const String login = '/login';
  static const String register = '/register';
  static const String resetPassword = '/reset-password';

  // Public Pages
  static const String home = '/home';
  static const String movies = '/movies';
  static const String comingSoonMovies = 'coming-soon-movies';
  static const String upcomingMovies = '/upcoming-movies';
  static const String theaters = '/theaters';
  static const String account = '/account';

  // movie screens
  static const String movieDetails = '/movie-details';
  static const String movieInfo = '/movie-info';
  static const String movieReviews = '/movie-reviews';

  // theater screens
  static const String theaterInfo = '/theater-info';

  // booking
  static const String seatLayout = '/seat-layout';

  // account screens
  static const String upcomingBookings = '/upcoming-bookings';
  static const String previousBookings = '/previous-bookings';
  static const String cancelledBookings = '/cancelled-bookings';
  static const String contact = '/contact';
  static const String faq = '/faq';
  static const String termsConditions = '/terms-conditions';
  static const String privacyPolicy = '/privacy-policy';
  static const String refundPolicy = '/refund-policy';

  static const String maintenance = '/maintenance';
}

class RouteName {
  static const String initial = 'initial';
  static const String welcome = 'welcome';

  // auth screens
  static const String login = 'login';
  static const String register = 'register';
  static const String resetPassword = 'resetPassword';

  // Public Pages
  static const String home = 'home';
  static const String movies = 'movies';
  static const String comingSoonMovies = 'comingSoonMovies';
  static const String upcomingMovies = 'upcomingMovies';
  static const String theaters = 'theaters';
  static const String account = 'account';

  // movie screens
  static const String movieDetails = 'movieDetails';
  static const String movieInfo = 'movieInfo';
  static const String movieReviews = 'movieReviews';

  // theater screens
  static const String theaterInfo = 'theaterInfo';

  // booking
  static const String seatLayout = 'seatLayout';

  // account screens
  static const String upcomingBookings = 'upcomingBookings';
  static const String previousBookings = 'previousBookings';
  static const String cancelledBookings = 'cancelledBookings';
  static const String contact = 'contact';
  static const String faq = 'faq';
  static const String termsConditions = 'termsConditions';
  static const String privacyPolicy = 'privacyPolicy';
  static const String refundPolicy = 'refundPolicy';

  static const String maintenance = 'maintenance';
}

class AppRouter {
  static final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: RoutePath.initial,
    routes: $appRoutes,
  );
}

@TypedGoRoute<SplashRoute>(
  path: RoutePath.initial,
  name: RouteName.initial,
)
class SplashRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(child: SplashScreen());
  }
}

@TypedGoRoute<WelcomeRoute>(
  path: RoutePath.welcome,
  name: RouteName.welcome,
)
class WelcomeRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(WelcomeScreen());
  }
}

@TypedGoRoute<LoginRoute>(
  path: RoutePath.login,
  name: RouteName.login,
)
class LoginRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(LoginScreen());
  }
}

@TypedGoRoute<RegisterRoute>(
  path: RoutePath.register,
  name: RouteName.register,
)
class RegisterRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(RegisterScreen());
  }
}

@TypedGoRoute<ResetPasswordRoute>(
  path: RoutePath.resetPassword,
  name: RouteName.resetPassword,
)
class ResetPasswordRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(ResetPasswordScreen());
  }
}

@TypedStatefulShellRoute<BottomNavRoute>(
  branches: [
    // Home Route
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<HomeRoute>(
          path: RoutePath.home,
          name: RouteName.home,
        ),
      ],
    ),

    // Movies Route
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<MoviesRoute>(
          path: RoutePath.movies,
          name: RouteName.movies,
          routes: [
            TypedGoRoute<ComingSoonMoviesRoute>(
              path: RoutePath.comingSoonMovies,
              name: RouteName.comingSoonMovies,
            ),
          ],
        ),
      ],
    ),

    // Theaters Route
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<TheatersRoute>(
          path: RoutePath.theaters,
          name: RouteName.theaters,
        ),
      ],
    ),

    // Account Route
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<AccountRoute>(
          path: RoutePath.account,
          name: RouteName.account,
        ),
      ],
    ),
  ],
)
class BottomNavRoute extends StatefulShellRouteData {
  const BottomNavRoute();
  @override
  Page<void> pageBuilder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return NoTransitionPage(
      child: BottomNavScreen(
        key: state.pageKey,
        child: navigationShell,
      ),
    );
  }
}

class HomeRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(HomeScreen());
  }
}

class MoviesRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(MoviesScreen());
  }
}

class ComingSoonMoviesRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(ComingSoonMoviesScreen());
  }
}

@TypedGoRoute<UpcomingMoviesRoute>(
  path: RoutePath.upcomingMovies,
  name: RouteName.upcomingMovies,
)
class UpcomingMoviesRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(UpcomingMoviesScreen());
  }
}

@TypedGoRoute<MovieDetailsRoute>(
  path: RoutePath.movieDetails,
  name: RouteName.movieDetails,
)
class MovieDetailsRoute extends GoRouteData {
  const MovieDetailsRoute({required this.movieName});
  final String movieName;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(MovieDetailsScreen(movieName: movieName));
  }
}

@TypedGoRoute<MovieInfoRoute>(
  path: RoutePath.movieInfo,
  name: RouteName.movieInfo,
)
class MovieInfoRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(MovieInfoScreen());
  }
}

@TypedGoRoute<MovieReviewsRoute>(
  path: RoutePath.movieReviews,
  name: RouteName.movieReviews,
)
class MovieReviewsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(ReviewsScreen());
  }
}

class TheatersRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(TheatersScreen());
  }
}

@TypedGoRoute<TheaterInfoRoute>(
  path: RoutePath.theaterInfo,
  name: RouteName.theaterInfo,
)
class TheaterInfoRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(TheaterInfoScreen());
  }
}

@TypedGoRoute<SeatLayoutRoute>(
  path: RoutePath.seatLayout,
  name: RouteName.seatLayout,
)
class SeatLayoutRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(ScreenLayoutScreen());
  }
}

class AccountRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(AccountScreen());
  }
}

@TypedGoRoute<UpcomingBookingsRoute>(
  path: RoutePath.upcomingBookings,
  name: RouteName.upcomingBookings,
)
class UpcomingBookingsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(UpcomingBookingsScreen());
  }
}

@TypedGoRoute<PreviousBookingsRoute>(
  path: RoutePath.previousBookings,
  name: RouteName.previousBookings,
)
class PreviousBookingsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(PreviousBookingsScreen());
  }
}

@TypedGoRoute<CancelledBookingsRoute>(
  path: RoutePath.cancelledBookings,
  name: RouteName.cancelledBookings,
)
class CancelledBookingsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(CancelledBookingsScreen());
  }
}

@TypedGoRoute<ContactRoute>(
  path: RoutePath.contact,
  name: RouteName.contact,
)
class ContactRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(ContactScreen());
  }
}

@TypedGoRoute<FaqRoute>(
  path: RoutePath.faq,
  name: RouteName.faq,
)
class FaqRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(FaqScreen());
  }
}

@TypedGoRoute<TermsConditionsRoute>(
  path: RoutePath.termsConditions,
  name: RouteName.termsConditions,
)
class TermsConditionsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(TermsConditionsScreen());
  }
}

@TypedGoRoute<PrivacyPolicyRoute>(
  path: RoutePath.privacyPolicy,
  name: RouteName.privacyPolicy,
)
class PrivacyPolicyRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(PrivacyPolicyScreen());
  }
}

@TypedGoRoute<RefundPolicyRoute>(
  path: RoutePath.refundPolicy,
  name: RouteName.refundPolicy,
)
class RefundPolicyRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(RefundPolicyScreen());
  }
}

@TypedGoRoute<MaintainanceRoute>(
  path: RoutePath.maintenance,
  name: RouteName.maintenance,
)
class MaintainanceRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(MaintenanceScreen());
  }
}

Page slideTransitionPage(
  Widget child, {
  int? milliseconds,
  Tween<Offset>? tween,
}) {
  return CustomTransitionPage(
    transitionDuration: Duration(milliseconds: milliseconds ?? 200),
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
      position: animation.drive(
        tween ?? Tween(begin: const Offset(1, 0), end: const Offset(0, 0)),
      ),
      child: child,
    ),
  );
}
