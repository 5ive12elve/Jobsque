import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.blueGray100,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray200,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray60001,
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 12.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 32.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 28.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 24.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray60001,
          fontSize: 12.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 10.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.whiteA700.withOpacity(0.5),
          fontSize: 8.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 20.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray60001,
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF3366FF),
    primaryContainer: Color(0XFF111827),
    secondaryContainer: Color(0XFFFF3366),

    // Error colors
    errorContainer: Color(0XFF105DFB),

    // On colors(text colors)
    onPrimary: Color(0XFF101520),
    onPrimaryContainer: Color(0XFF6690FF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber600 => Color(0XFFDBB40E);

  // Blacka
  Color get black9000a => Color(0X0A000000);

  // Blue
  Color get blue100 => Color(0XFFADC8FF);
  Color get blue50 => Color(0XFFE0EBFF);
  Color get blue5001 => Color(0XFFE0EAFF);
  Color get blue5002 => Color(0XFFD6E4FF);
  Color get blue5003 => Color(0XFFEBF2FF);
  Color get blue900 => Color(0XFF1939B7);
  Color get blueA100 => Color(0XFF84A9FF);
  Color get blueA200 => Color(0XFF4087FC);
  Color get blueA400 => Color(0XFF387FFB);

  // BlueGray
  Color get blueGray100 => Color(0XFFD1D5DB);
  Color get blueGray10001 => Color(0XFFD9D9D9);
  Color get blueGray200 => Color(0XFFACAEBE);
  Color get blueGray300 => Color(0XFF9CA3AF);
  Color get blueGray500 => Color(0XFF75788D);
  Color get blueGray700 => Color(0XFF4B5563);
  Color get blueGray800 => Color(0XFF374151);
  Color get blueGray80001 => Color(0XFF363F5E);
  Color get blueGray900 => Color(0XFF222741);
  Color get blueGray90001 => Color(0XFF1F2937);
  Color get blueGray90002 => Color(0XFF292D32);

  // DeepPurple
  Color get deepPurpleA200 => Color(0XFF793CF8);
  Color get deepPurpleA20000 => Color(0X00793BF8);

  // Gray
  Color get gray100 => Color(0XFFF4F4F5);
  Color get gray10001 => Color(0XFFEFF4FF);
  Color get gray200 => Color(0XFFE5E7EB);
  Color get gray50 => Color(0XFFFAFAFA);
  Color get gray600 => Color(0XFF737379);
  Color get gray60001 => Color(0XFF6B7280);

  // Graye
  Color get gray9001e => Color(0X1E0F172A);

  // Green
  Color get green800 => Color(0XFF2E8E18);
  Color get green900 => Color(0XFF1B720F);

  // Indigo
  Color get indigo300 => Color(0XFF707FED);
  Color get indigo900 => Color(0XFF091A7A);
  Color get indigo90001 => Color(0XFF02337A);
  Color get indigoA200 => Color(0XFF5865F2);
  Color get indigoA700 => Color(0XFF3D35DE);

  // LightBlue
  Color get lightBlueA200 => Color(0XFF36C5F0);
  Color get lightBlueA700 => Color(0XFF0077FF);

  // LightGreen
  Color get lightGreen300 => Color(0XFFB2ED82);
  Color get lightGreenA700 => Color(0XFF60C631);

  // Red
  Color get red500 => Color(0XFFEA4335);
  Color get red50001 => Color(0XFFFF472B);
  Color get red700 => Color(0XFFDB291F);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();