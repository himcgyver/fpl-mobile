import 'package:get_it/get_it.dart';
import 'package:fpl_mobile/services/api.dart';
import 'package:fpl_mobile/viewmodels/menu_model.dart';

GetIt locator = GetIt.instance;

setupServiceLocator() {
  // locator.registerLazySingleton<StorageService>(() => StorageServiceFake()); using abstract class
  locator.registerLazySingleton(() => Api());

  locator.registerLazySingleton(() => MenuModel());
}
