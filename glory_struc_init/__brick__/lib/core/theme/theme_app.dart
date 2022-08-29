import 'package:flutter/material.dart';
import 'package:geeks_theme/geeks_theme.dart';
import 'package:geeks_theme/theme/extentions/extentions.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/const_file.dart';
import 'color_scheme.dart';

class CustomThemeApp {
  static final GeeksTheme appTheme = GeeksTheme(
      useSeed: true,
      textTheme: (textTheme) => GoogleFonts.notoKufiArabicTextTheme(textTheme),
      lightSeedSchemeColor:
          ColorScheme.fromSeed(seedColor: lightColorScheme.primary)
              .fromColorSchemeTo(lightColorScheme),
      darkSeedSchemeColor:
          ColorScheme.fromSeed(seedColor: darkColorScheme.primary)
              .fromColorSchemeTo(darkColorScheme),
      themeChangeApp: (color) => ThemeData(
            // elevatedButtonTheme: _elevatedButtonTheme,
            // outlinedButtonTheme: _outLinedButtonTheme,
            // drawerTheme: _drawerTheme(color),
            // inputDecorationTheme: _inputDecorationTheme(color),
            // appBarTheme: _appBarTheme(color),
          ));

 
}
