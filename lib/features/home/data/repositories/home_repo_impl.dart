import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/api/api_handler.dart';
import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/features/home/data/datasources/home_api_service.dart';
import 'package:ticket_bay/features/home/domain/models/cities_model.dart';
import 'package:ticket_bay/features/home/domain/repositories/home_repository.dart';

final homeRepoProvider = Provider<HomeRepository>((ref) {
  return HomeRepoImpl(ref, ref.read(homeApiServiceProvider));
});

class HomeRepoImpl extends HomeRepository {
  final HomeApiService _apiService;
  final Ref ref;

  HomeRepoImpl(this.ref, HomeApiService apiService) : _apiService = apiService;

  @override
  FutureEither<List<CityModel>?> getLocations({String? search}) {
    return apiHandler<List<CityModel>?>(() async {
      final res = await _apiService.getLocations(search: search);
      return res.cities;
    });
  }
}
