import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ticket_bay/core/api/api_client.dart';
import 'package:ticket_bay/core/api/end_points.dart';
import 'package:ticket_bay/features/booking/domain/models/commission_model.dart';
import 'package:ticket_bay/features/booking/domain/models/screen_layout_model.dart';
part 'screen_layout_api_service.g.dart';

final screenLayoutApiServiceProvider = Provider<ScreenLayoutApiService>((ref) {
  return ScreenLayoutApiService(ref.read(apiClientProvider));
});

@RestApi(baseUrl: Endpoints.apiURL)
abstract class ScreenLayoutApiService {
  factory ScreenLayoutApiService(Dio dio, {String baseUrl}) =
      _ScreenLayoutApiService;

  @GET(Endpoints.screenSections)
  Future<ScreenSectionsModel> getScreenSections({
    @Query("screen") required String screen,
    @Query("screenId") required String screenId,
    @Query("theaterName") required String theaterName,
  });

  @GET(Endpoints.screenLayout)
  Future<ScreenLayoutModel> getScreenLayout({
    @Query("screenId") required String screenId,
    @Query("sectionName") required String sectionName,
    @Query("theaterName") required String theaterName,
  });

  @GET(Endpoints.commissions)
  Future<CommissionModel> getCommissions({
    @Query("theaterName") required String theaterName,
    @Query("price") required int price,
  });
}
