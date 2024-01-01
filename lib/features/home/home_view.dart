import 'package:declutter/core/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            return SwitchListTile(
                title: Text(state.isDarkTheme ? 'Dark' : 'Light'),
                value: state.isDarkTheme,
                onChanged: (value) {
                  context.read<MainBloc>().add(SetDarkTheme(value));
                });
          },
        )
      ],
    ));
  }
}
