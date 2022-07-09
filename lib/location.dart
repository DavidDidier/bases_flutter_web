import 'package:get_it/get_it.dart';

import 'services/navigation_service.dart';

GetIt location = GetIt.instance;

void setupLocation() {
  location.registerLazySingleton(() => NavigationService());
}
