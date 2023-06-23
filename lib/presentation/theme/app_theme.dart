import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get light => FlexThemeData.light(
        scheme: FlexScheme.bigStone,
        surfaceMode: FlexSurfaceMode.highSurfaceLowScaffold,
        blendLevel: 20,
        appBarOpacity: 0.95,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          blendOnColors: false,
          textButtonRadius: 8.0,
          elevatedButtonRadius: 8.0,
          outlinedButtonRadius: 8.0,
          inputDecoratorRadius: 8.0,
          inputDecoratorUnfocusedBorderIsColored: false,
          navigationBarLabelBehavior:
              NavigationDestinationLabelBehavior.onlyShowSelected,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        fontFamily: GoogleFonts.questrial().fontFamily,
      );

  static ThemeData get dark => FlexThemeData.dark(
        scheme: FlexScheme.bigStone,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 15,
        appBarStyle: FlexAppBarStyle.background,
        appBarOpacity: 0.90,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 30,
          textButtonRadius: 8.0,
          elevatedButtonRadius: 8.0,
          outlinedButtonRadius: 8.0,
          inputDecoratorRadius: 8.0,
          inputDecoratorUnfocusedBorderIsColored: false,
          navigationBarLabelBehavior:
              NavigationDestinationLabelBehavior.onlyShowSelected,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        fontFamily: GoogleFonts.questrial().fontFamily,
      );

  static ThemeData get lightAuth => light.copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xFF1A2C42)),
            foregroundColor:
                MaterialStateProperty.all<Color>(const Color(0xFFFFFFFF)),
            fixedSize: MaterialStateProperty.all<Size>(
              const Size(
                double.infinity,
                56,
              ),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(
                const TextStyle(fontSize: 24)),
            shape: MaterialStateProperty.all<OutlinedBorder?>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
          ),
        ),
      );

  static ThemeData get darkAuth => dark.copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xFF60748A)),
            foregroundColor:
                MaterialStateProperty.all<Color>(const Color(0xFFF2F4F7)),
            fixedSize: MaterialStateProperty.all<Size>(
              const Size(
                double.infinity,
                56,
              ),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(
                const TextStyle(fontSize: 24)),
            shape: MaterialStateProperty.all<OutlinedBorder?>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
          ),
        ),
      );
}
