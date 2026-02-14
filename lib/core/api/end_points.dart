class Endpoints {
  // -------- Base URLs --------
  static const String baseURL = 'https://api.ticketbay.in';
  static const String apiURL = 'https://api.ticketbay.in/user';
  static const String profileImageURL = '$baseURL/profile-images/users';
  static const String moviePosterURL = '$baseURL/posters/movies';
  static const String castCrewImageURL = '$baseURL/profile-images/casts_crews';

  // -------- Auth --------
  static const String login = '/auth/login.php';
  static const String register = '/auth/register.php';
  static const String verifyOtp = '/auth/otp-verify.php';
  static const String forgotPassword = '/auth/forgot-password.php';
  static const String resetPassword = '/auth/reset-password.php';
  static const String refreshToken = '/auth/refresh-token.php';
  static const String checkAuth = '/auth/check-auth.php';
  static const String logout = '/auth/logout.php';

  // -------- State & City --------
  static const String cities = '/api/states_cities/list.php';

  // -------- Movies --------
  static const String recommendedMovies = '/api/movies/recommended-movies.php';
  static const String comingSoonMovies = '/api/movies/coming-soon-movies.php';
  static const String upcomingMovies = '/api/movies/upcoming-movies.php';
  static const String movieDetails = '/api/movies/movie-details.php';
  static const String movieLanguageFormats = '/api/movies/language-formats.php';
  static const String movieDates = '/api/movies/movie-dates.php';
  static const String movieInfo = '/api/movies/movie-info.php';

  // -------- Filter --------
  static const String movieLanuages = '/api/movies/filters/languages.php';
  static const String movieFormats = '/api/movies/filters/formats.php';
  static const String movieGenres = '/api/movies/filters/genres.php';

  // -------- Theaters --------
  static const String theaters = '/api/theaters/theaters.php';
  static const String theaterLanguageFormats =
      '/api/theaters/language-formats.php';
  static const String theaterMovieDates = '/api/theaters/movie-dates.php';
  static const String theaterMovieInfo = '/api/theaters/theater-info.php';

  // -------- Screen Layout --------
  static const String screenSections = '/api/screens/screen-sections.php';
  static const String screenLayout = '/api/screens/screen-layout.php';

  // -------- Commissions --------
  static const String commissions = '/api/booking/commissions.php';

  // -------- Booking --------
  static const String seatReserve = '/api/booking/seat-reserve.php';
}
