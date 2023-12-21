import 'package:declutter/features/home/home_view.dart';
import 'package:declutter/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeData(Brightness.light),
        darkTheme: AppTheme.themeData(Brightness.dark),
        home: const HomeView());
  }
}
