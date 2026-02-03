// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $welcomeRoute,
      $loginRoute,
      $registerRoute,
      $resetPasswordRoute,
      $bottomNavRoute,
      $upcomingMoviesRoute,
      $movieDetailsRoute,
      $movieReviewsRoute,
      $upcomingBookingsRoute,
      $previousBookingsRoute,
      $cancelledBookingsRoute,
      $contactRoute,
      $faqRoute,
      $termsConditionsRoute,
      $privacyPolicyRoute,
      $refundPolicyRoute,
      $maintainanceRoute,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/',
      name: 'initial',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => SplashRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $welcomeRoute => GoRouteData.$route(
      path: '/welcome',
      name: 'welcome',
      factory: $WelcomeRouteExtension._fromState,
    );

extension $WelcomeRouteExtension on WelcomeRoute {
  static WelcomeRoute _fromState(GoRouterState state) => WelcomeRoute();

  String get location => GoRouteData.$location(
        '/welcome',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      name: 'login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerRoute => GoRouteData.$route(
      path: '/register',
      name: 'register',
      factory: $RegisterRouteExtension._fromState,
    );

extension $RegisterRouteExtension on RegisterRoute {
  static RegisterRoute _fromState(GoRouterState state) => RegisterRoute();

  String get location => GoRouteData.$location(
        '/register',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $resetPasswordRoute => GoRouteData.$route(
      path: '/reset-password',
      name: 'resetPassword',
      factory: $ResetPasswordRouteExtension._fromState,
    );

extension $ResetPasswordRouteExtension on ResetPasswordRoute {
  static ResetPasswordRoute _fromState(GoRouterState state) =>
      ResetPasswordRoute();

  String get location => GoRouteData.$location(
        '/reset-password',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $bottomNavRoute => StatefulShellRouteData.$route(
      factory: $BottomNavRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/home',
              name: 'home',
              factory: $HomeRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/movies',
              name: 'movies',
              factory: $MoviesRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'coming-soon-movies',
                  name: 'comingSoonMovies',
                  factory: $ComingSoonMoviesRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/theaters',
              name: 'theaters',
              factory: $TheatersRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/account',
              name: 'account',
              factory: $AccountRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $BottomNavRouteExtension on BottomNavRoute {
  static BottomNavRoute _fromState(GoRouterState state) =>
      const BottomNavRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MoviesRouteExtension on MoviesRoute {
  static MoviesRoute _fromState(GoRouterState state) => MoviesRoute();

  String get location => GoRouteData.$location(
        '/movies',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ComingSoonMoviesRouteExtension on ComingSoonMoviesRoute {
  static ComingSoonMoviesRoute _fromState(GoRouterState state) =>
      ComingSoonMoviesRoute();

  String get location => GoRouteData.$location(
        '/movies/coming-soon-movies',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TheatersRouteExtension on TheatersRoute {
  static TheatersRoute _fromState(GoRouterState state) => TheatersRoute();

  String get location => GoRouteData.$location(
        '/theaters',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AccountRouteExtension on AccountRoute {
  static AccountRoute _fromState(GoRouterState state) => AccountRoute();

  String get location => GoRouteData.$location(
        '/account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $upcomingMoviesRoute => GoRouteData.$route(
      path: '/upcoming-movies',
      name: 'upcomingMovies',
      factory: $UpcomingMoviesRouteExtension._fromState,
    );

extension $UpcomingMoviesRouteExtension on UpcomingMoviesRoute {
  static UpcomingMoviesRoute _fromState(GoRouterState state) =>
      UpcomingMoviesRoute();

  String get location => GoRouteData.$location(
        '/upcoming-movies',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $movieDetailsRoute => GoRouteData.$route(
      path: '/movie-details',
      name: 'movieDetails',
      factory: $MovieDetailsRouteExtension._fromState,
    );

extension $MovieDetailsRouteExtension on MovieDetailsRoute {
  static MovieDetailsRoute _fromState(GoRouterState state) => MovieDetailsRoute(
        movieName: state.uri.queryParameters['movie-name']!,
      );

  String get location => GoRouteData.$location(
        '/movie-details',
        queryParams: {
          'movie-name': movieName,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $movieReviewsRoute => GoRouteData.$route(
      path: '/movie-reviews',
      name: 'movieReviews',
      factory: $MovieReviewsRouteExtension._fromState,
    );

extension $MovieReviewsRouteExtension on MovieReviewsRoute {
  static MovieReviewsRoute _fromState(GoRouterState state) =>
      MovieReviewsRoute();

  String get location => GoRouteData.$location(
        '/movie-reviews',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $upcomingBookingsRoute => GoRouteData.$route(
      path: '/upcoming-bookings',
      name: 'upcomingBookings',
      factory: $UpcomingBookingsRouteExtension._fromState,
    );

extension $UpcomingBookingsRouteExtension on UpcomingBookingsRoute {
  static UpcomingBookingsRoute _fromState(GoRouterState state) =>
      UpcomingBookingsRoute();

  String get location => GoRouteData.$location(
        '/upcoming-bookings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $previousBookingsRoute => GoRouteData.$route(
      path: '/previous-bookings',
      name: 'previousBookings',
      factory: $PreviousBookingsRouteExtension._fromState,
    );

extension $PreviousBookingsRouteExtension on PreviousBookingsRoute {
  static PreviousBookingsRoute _fromState(GoRouterState state) =>
      PreviousBookingsRoute();

  String get location => GoRouteData.$location(
        '/previous-bookings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $cancelledBookingsRoute => GoRouteData.$route(
      path: '/cancelled-bookings',
      name: 'cancelledBookings',
      factory: $CancelledBookingsRouteExtension._fromState,
    );

extension $CancelledBookingsRouteExtension on CancelledBookingsRoute {
  static CancelledBookingsRoute _fromState(GoRouterState state) =>
      CancelledBookingsRoute();

  String get location => GoRouteData.$location(
        '/cancelled-bookings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $contactRoute => GoRouteData.$route(
      path: '/contact',
      name: 'contact',
      factory: $ContactRouteExtension._fromState,
    );

extension $ContactRouteExtension on ContactRoute {
  static ContactRoute _fromState(GoRouterState state) => ContactRoute();

  String get location => GoRouteData.$location(
        '/contact',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $faqRoute => GoRouteData.$route(
      path: '/faq',
      name: 'faq',
      factory: $FaqRouteExtension._fromState,
    );

extension $FaqRouteExtension on FaqRoute {
  static FaqRoute _fromState(GoRouterState state) => FaqRoute();

  String get location => GoRouteData.$location(
        '/faq',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $termsConditionsRoute => GoRouteData.$route(
      path: '/terms-conditions',
      name: 'termsConditions',
      factory: $TermsConditionsRouteExtension._fromState,
    );

extension $TermsConditionsRouteExtension on TermsConditionsRoute {
  static TermsConditionsRoute _fromState(GoRouterState state) =>
      TermsConditionsRoute();

  String get location => GoRouteData.$location(
        '/terms-conditions',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $privacyPolicyRoute => GoRouteData.$route(
      path: '/privacy-policy',
      name: 'privacyPolicy',
      factory: $PrivacyPolicyRouteExtension._fromState,
    );

extension $PrivacyPolicyRouteExtension on PrivacyPolicyRoute {
  static PrivacyPolicyRoute _fromState(GoRouterState state) =>
      PrivacyPolicyRoute();

  String get location => GoRouteData.$location(
        '/privacy-policy',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $refundPolicyRoute => GoRouteData.$route(
      path: '/refund-policy',
      name: 'refundPolicy',
      factory: $RefundPolicyRouteExtension._fromState,
    );

extension $RefundPolicyRouteExtension on RefundPolicyRoute {
  static RefundPolicyRoute _fromState(GoRouterState state) =>
      RefundPolicyRoute();

  String get location => GoRouteData.$location(
        '/refund-policy',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $maintainanceRoute => GoRouteData.$route(
      path: '/maintenance',
      name: 'maintenance',
      factory: $MaintainanceRouteExtension._fromState,
    );

extension $MaintainanceRouteExtension on MaintainanceRoute {
  static MaintainanceRoute _fromState(GoRouterState state) =>
      MaintainanceRoute();

  String get location => GoRouteData.$location(
        '/maintenance',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
