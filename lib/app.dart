import 'package:declutter/core/bloc/main_bloc.dart';
import 'package:declutter/features/home/home_view.dart';
import 'package:declutter/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.themeData(Brightness.light),
            darkTheme: AppTheme.themeData(Brightness.dark),
            home: const HomeView()),
    );
  }
}
