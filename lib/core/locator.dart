
import 'package:declutter/services/local_storage_service/i_local_storage_service.dart';
import 'package:declutter/services/local_storage_service/local_storage_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future setUpLocator() async {
  
  locator
      .registerLazySingleton<ILocalStorageService>(() => LocalStorageService());

//locator.registerLazySingleton<ISettingsService>(() => SettingsService());
  //locator.registerLazySingleton<INavigationService>(() => NavigationService());
  //locator.registerLazySingleton<IDialogAndSheetService>(() => DialogAndSheetService());
  //locator.registerLazySingleton<IAuthRepository>(() => AuthRepository());
  //locator.registerLazySingleton<IAuthRemoteDataSource>(() => AuthRemoteAuthDataSource());
  //locator.registerLazySingleton<INetworkService>(() => NetworkService());
  //locator.registerLazySingleton<ILocationService>(() => LocationService());
  //locator.registerLazySingleton<IHomeRemoteDataSource>(() => HomeRemoteDataSource());
  //locator.registerLazySingleton<IHomeRepository>(() => HomeRepository());
  //_setUpNotificationService();
}

/**
  void _setUpNotificationService() {
    locator
        .registerLazySingleton<INotificationService>(() => NotificationService());
    locator<INotificationService>().init();
  }
*/
