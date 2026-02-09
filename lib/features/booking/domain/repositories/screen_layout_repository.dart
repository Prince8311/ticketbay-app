import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/features/booking/domain/models/screen_layout_model.dart';

abstract class ScreenLayoutRepository {
  FutureEither<List<SectionItem>?> getScreenSections({
    required String screen,
    required String screenId,
    required String theaterName,
  });
  FutureEither<List<ScreenSeatsModel>?> getScreenLayout({
    required String screenId,
    required String sectionName,
    required String theaterName,
  });
}
