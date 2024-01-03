import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          textTheme: const TextTheme(
            titleMedium: TextStyle(fontSize: 18),
          ));
}
