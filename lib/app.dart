import 'package:declutter/core/app_theme.dart';
import 'package:declutter/core/bloc/main_bloc.dart';
import 'package:declutter/features/bottom_nav_holder/bottom_nav_holder.dart';
import 'package:declutter/features/home/home_view.dart';

import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return DynamicColorBuilder(
            builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
              return MaterialApp(
                  title: 'DeClutter',
                  debugShowCheckedModeBanner: false,
                  theme: state.isDarkTheme
                      ? AppTheme.themeData(
                          darkDynamic ?? const ColorScheme.dark())
                      : AppTheme.themeData(
                          lightDynamic ?? const ColorScheme.light()),
                  darkTheme: AppTheme.themeData(
                      darkDynamic ?? const ColorScheme.dark()),
                  home: const BottomNavHolderView());
            },
          );
        },
      ),
    );
  }
}
