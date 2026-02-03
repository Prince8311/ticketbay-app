import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/features/movie/domain/models/movies_model.dart';
import 'package:ticket_bay/features/theater/domain/models/theaters_model.dart';

abstract class TheaterRepository {
  FutureEither<TheaterListModel?> getTheaters({
    required String location,
    int? page,
  });
  FutureEither<List<LanguageFormatsModel>?> getTheaterLanguageFormats({
    required String name,
  });
}
