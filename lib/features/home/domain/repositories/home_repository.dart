import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/features/home/domain/models/cities_model.dart';

abstract class HomeRepository {
  FutureEither<List<CityModel>?> getLocations({String? search});
}
