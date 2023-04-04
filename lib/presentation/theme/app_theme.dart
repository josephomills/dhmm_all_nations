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
}
