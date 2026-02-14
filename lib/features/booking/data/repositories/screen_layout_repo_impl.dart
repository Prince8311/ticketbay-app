import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/api/api_handler.dart';
import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/features/booking/data/datasources/screen_layout_api_service.dart';
import 'package:ticket_bay/features/booking/domain/models/commission_model.dart';
import 'package:ticket_bay/features/booking/domain/models/screen_layout_model.dart';
import 'package:ticket_bay/features/booking/domain/repositories/screen_layout_repository.dart';

final screenLayoutRepoProvider = Provider<ScreenLayoutRepository>((ref) {
  return ScreenLayoutRepoImpl(ref, ref.read(screenLayoutApiServiceProvider));
});

class ScreenLayoutRepoImpl extends ScreenLayoutRepository {
  final ScreenLayoutApiService _apiService;
  final Ref ref;

  ScreenLayoutRepoImpl(this.ref, ScreenLayoutApiService apiService)
      : _apiService = apiService;

  @override
  FutureEither<List<SectionItem>?> getScreenSections({
    required String screen,
    required String screenId,
    required String theaterName,
  }) {
    return apiHandler<List<SectionItem>?>(() async {
      final res = await _apiService.getScreenSections(
        screen: screen,
        screenId: screenId,
        theaterName: theaterName,
      );
      return res.sections;
    });
  }

  @override
  FutureEither<List<ScreenSeatsModel>?> getScreenLayout({
    required String screenId,
    required String sectionName,
    required String theaterName,
  }) {
    return apiHandler<List<ScreenSeatsModel>?>(() async {
      final res = await _apiService.getScreenLayout(
        screenId: screenId,
        sectionName: sectionName,
        theaterName: theaterName,
      );
      return res.seatData;
    });
  }

  @override
  FutureEither<CommissionModel?> getCommissions({
    required String theaterName,
    required int price,
  }) {
    return apiHandler<CommissionModel?>(() async {
      final res = await _apiService.getCommissions(
        theaterName: theaterName,
        price: price,
      );
      return res;
    });
  }
}
