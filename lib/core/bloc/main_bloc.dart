import 'dart:async';


import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<MainEvent>((event, emit) {
      
    });
    on<SetDarkTheme>(_setDarkTheme);
  }

  FutureOr<void> _setDarkTheme(SetDarkTheme event, Emitter<MainState> emit) async{

  }
}
