import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/api/api_handler.dart';
import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/features/movie/domain/models/movies_model.dart';
import 'package:ticket_bay/features/theater/data/datasources/theater_api_service.dart';
import 'package:ticket_bay/features/theater/domain/models/theaters_model.dart';
import 'package:ticket_bay/features/theater/domain/repositories/theater_repository.dart';

final theaterRepoProvider = Provider<TheaterRepository>((ref) {
  return TheaterRepoImpl(ref, ref.read(theaterApiServiceProvider));
});

class TheaterRepoImpl extends TheaterRepository {
  final TheaterApiService _apiService;
  final Ref ref;

  TheaterRepoImpl(this.ref, TheaterApiService apiService)
      : _apiService = apiService;

  @override
  FutureEither<TheaterListModel?> getTheaters({
    required String location,
    int? page,
  }) {
    return apiHandler<TheaterListModel?>(() async {
      final res = await _apiService.getTheaters(
        location: location,
        page: page,
      );
      return res;
    });
  }

  @override
  FutureEither<List<LanguageFormatsModel>?> getTheaterLanguageFormats({
    required String name,
  }) {
    return apiHandler<List<LanguageFormatsModel>?>(() async {
      final res = await _apiService.getTheaterLanguageFormats(
        name: name,
      );
      return res.data;
    });
  }
}
