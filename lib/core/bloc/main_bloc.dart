import 'dart:async';

import 'package:declutter/constants/hive_box_keys.dart';
import 'package:declutter/constants/hive_box_names.dart';
import 'package:declutter/core/locator.dart';
import 'package:declutter/services/local_storage_service/i_local_storage_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<MainEvent>((event, emit) {});
    on<SetDarkTheme>(_setDarkTheme);
    on<GetDarkTheme>(_getDarkTheme);
  }

  final localStorage = locator<ILocalStorageService>();

  FutureOr<void> _setDarkTheme(
      SetDarkTheme event, Emitter<MainState> emit) async {
    await localStorage.write(
        boxName: HiveBoxNames.generalAppBox,
        key: HiveBoxKeys.isDarkMode,
        value: event.isDarkTheme);

    emit(state.copyWith(isDarkTheme: event.isDarkTheme));
  }

  FutureOr<void> _getDarkTheme(
      GetDarkTheme event, Emitter<MainState> emit) async {
    bool isDarkTheme = await localStorage.read(
        boxName: HiveBoxNames.generalAppBox,
        key: HiveBoxKeys.isDarkMode,
        defaultValue: false);

    emit(state.copyWith(isDarkTheme: isDarkTheme));
  }
}
