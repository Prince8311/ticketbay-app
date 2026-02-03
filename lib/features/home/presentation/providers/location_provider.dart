import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_bay/core/api/error_handler.dart';
import 'package:ticket_bay/core/shared/helpers/local_storage.dart';
import 'package:ticket_bay/features/home/data/repositories/home_repo_impl.dart';
import 'package:ticket_bay/features/home/domain/models/cities_model.dart';

part 'location_provider.g.dart';

const _locationKey = 'selected_location';
final locationSearchProvider = StateProvider<String?>((ref) => null);

final locationProvider =
    StateNotifierProvider<LocationNotifier, String?>((ref) {
  final storageAsync = ref.watch(localStorageProvider);

  return storageAsync.when(
    data: (storage) => LocationNotifier(storage)..loadLocation(),
    loading: () => LocationNotifier(null),
    error: (_, __) => LocationNotifier(null),
  );
});

class LocationNotifier extends StateNotifier<String?> {
  final LocalDB? storage;

  LocationNotifier(this.storage) : super(null);

  Future<void> loadLocation() async {
    if (storage == null) return;
    final savedLocation = await storage!.readData(_locationKey);
    state = savedLocation;
  }

  Future<void> setLocation(String location) async {
    state = location;
    await storage?.writeData(_locationKey, location);
  }

  bool get hasLocation => state != null && state!.isNotEmpty;
}

@riverpod
Future<List<CityModel>> locationList(
  Ref ref, {
  String? search,
}) async {
  final result = await ref.read(homeRepoProvider).getLocations(search: search);

  return result.fold(
    (error) {
      ApiError.commonErrorHandler(error);
      return [];
    },
    (cities) => cities ?? [],
  );
}
