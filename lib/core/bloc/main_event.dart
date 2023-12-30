part of 'main_bloc.dart';

sealed class MainEvent extends Equatable {
  const MainEvent();

  @override
  List<Object> get props => [];
}

class SetDarkTheme extends MainEvent {
  final bool isDarkTheme;

  const SetDarkTheme(this.isDarkTheme);

  @override
  List<Object> get props => [isDarkTheme];
}




