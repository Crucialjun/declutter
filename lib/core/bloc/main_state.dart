part of 'main_bloc.dart';

class MainState extends Equatable {
  final bool isDarkTheme;
  const MainState({this.isDarkTheme = false });

  @override
  List<Object> get props => [isDarkTheme];

  MainState copyWith({bool? isDarkTheme}) {
    return MainState(
      isDarkTheme: isDarkTheme ?? this.isDarkTheme,
    );
  }
}

final class MainInitial extends MainState {

}
