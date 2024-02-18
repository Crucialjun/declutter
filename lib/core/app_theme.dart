import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData themeData(
    ColorScheme colorScheme,
  ) =>
      ThemeData(
          fontFamily: GoogleFonts.nunitoSans().fontFamily,
          colorScheme: colorScheme,
          appBarTheme: AppBarTheme(
            backgroundColor: colorScheme.background,
            elevation: 0,
            scrolledUnderElevation: 0,
            surfaceTintColor: colorScheme.background,
            shadowColor: colorScheme.background,
            iconTheme: IconThemeData(
              color: colorScheme.onBackground,
            ),
            systemOverlayStyle: SystemUiOverlayStyle(
              // Status bar color
              statusBarColor: colorScheme.background,

              // Status bar brightness (optional)
              statusBarIconBrightness:
                  colorScheme.brightness == Brightness.light
                      ? Brightness.dark
                      : Brightness.light, // For Android (dark icons)
              statusBarBrightness: colorScheme.brightness == Brightness.light
                  ? Brightness.dark
                  : Brightness.light, // For iOS
            ),
          ),
          useMaterial3: true,
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
           
          ),
          textTheme: const TextTheme(
            titleMedium: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none),
            titleLarge: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                overflow: TextOverflow.ellipsis),
          ));
}
