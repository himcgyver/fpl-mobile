import 'package:get_it/get_it.dart';
import 'package:fpl_mobile/services/api.dart';
import 'package:fpl_mobile/viewmodels/menu_model.dart';
import 'package:fpl_mobile/viewmodels/fixtures_model.dart';
import 'package:fpl_mobile/viewmodels/loading_model.dart';
import 'package:fpl_mobile/services/static_main_data.dart';

GetIt locator = GetIt.instance;

setupServiceLocator() {
  // locator.registerLazySingleton<StorageService>(() => StorageServiceFake()); using abstract class
  locator.registerLazySingleton(() => Api());

  locator.registerLazySingleton(() => SharedMainData());
  locator.registerLazySingleton(() => MenuViewModel());
  locator.registerLazySingleton(() => FixturesViewModel());
  locator.registerLazySingleton(() => LoadingViewModel());
}
