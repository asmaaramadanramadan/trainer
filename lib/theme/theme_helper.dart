import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fty/core/utils/pref_utils.dart';
import 'package:fty/core/utils/size_utils.dart';

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
      scaffoldBackgroundColor: appTheme.gray5001,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
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
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.onPrimaryContainer,
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
        color: colorScheme.onPrimaryContainer,
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
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 58.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        displayMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 43.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 34.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 32.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 27.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.lightGreenA200,
          fontSize: 11.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: Color(0XFF192126),
          fontSize: 9.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 20.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF056AFF),
    primaryContainer: Color(0XFF1D1517),
    secondaryContainer: Color(0XFF5E5E5E),

    // Error colors
    errorContainer: Color(0XFFFF0000),
    onError: Color(0XFF2255EE),
    onErrorContainer: Color(0X26030303),

    // On colors(text colors)
    onPrimary: Color(0XFF0B0616),
    onPrimaryContainer: Color(0XFF92929D),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF0A0615);
  Color get black90001 => Color(0XFF000000);

  // Blue
  Color get blue400 => Color(0XFF5697F2);
  Color get blue80026 => Color(0X260157CD);
  Color get blueA400 => Color(0XFF1477FF);
  Color get blueA40001 => Color(0XFF1877F2);
  Color get blueA40002 => Color(0XFF2A83FF);
  Color get blueA700 => Color(0XFF006BFF);

  // BlueGray
  Color get blueGray100 => Color(0XFFD5D5D5);
  Color get blueGray10001 => Color(0XFFD9D9D9);
  Color get blueGray10002 => Color(0XFFCDCDCD);
  Color get blueGray50 => Color(0XFFF1F1F1);
  Color get blueGray800 => Color(0XFF3F3D56);
  Color get blueGray900 => Color(0XFF111441);

  // Cyan
  Color get cyan40059 => Color(0X5917C3CE);

  // Gray
  Color get gray100 => Color(0XFFF2F2FE);
  Color get gray10001 => Color(0XFFF5F5F5);
  Color get gray300 => Color(0XFFE6E6E6);
  Color get gray30001 => Color(0XFFE0E0E0);
  Color get gray30002 => Color(0XFFE3E3E7);
  Color get gray30003 => Color(0XFFE3E3E3);
  Color get gray400 => Color(0XFFBDBDBD);
  Color get gray40001 => Color(0XFFBBBBBB);
  Color get gray50 => Color(0XFFF9F9F9);
  Color get gray500 => Color(0XFF9E9E9E);
  Color get gray50001 => Color(0XFF979797);
  Color get gray50002 => Color(0XFF9D9D9D);
  Color get gray5001 => Color(0XFFFBFBFB);
  Color get gray5002 => Color(0XFFF7FAFF);
  Color get gray5003 => Color(0XFFF8F8F8);
  Color get gray600 => Color(0XFF757575);
  Color get gray60001 => Color(0XFF7A7A7A);
  Color get gray60002 => Color(0XFF7F7F7F);
  Color get gray60003 => Color(0XFF7B6F72);
  Color get gray800 => Color(0XFF4D4D4D);
  Color get gray80001 => Color(0XFF3B3B3B);
  Color get gray900 => Color(0XFF192126);
  Color get gray90001 => Color(0XFF1D1D1D);
  Color get gray90002 => Color(0XFF191D1A);
  Color get gray90003 => Color(0XFF121212);
  Color get gray90004 => Color(0XFF212121);

  // Grayf
  Color get gray4003f => Color(0X3FD4C0C0);

  // GrayDd
  Color get gray700Dd => Color(0XDD575757);

  // Indigo
  Color get indigo100 => Color(0XFFC7CDE0);
  Color get indigoA100 => Color(0XFF92A3FD);

  // LightBlue
  Color get lightBlue100 => Color(0XFFADDAFF);
  Color get lightBlueA700 => Color(0XFF0086FF);

  // LightGreen
  Color get lightGreen50 => Color(0XFFF1FFE9);
  Color get lightGreenA200 => Color(0XFFBBF246);

  // Orange
  Color get orange600 => Color(0XFFFF8700);

  // Red
  Color get red500 => Color(0XFFEA4335);
  Color get redA200 => Color(0XFFF85555);

  // Teal
  Color get teal50 => Color(0XFFDDE4EE);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);

  // Yellow
  Color get yellow400 => Color(0XFFFFDD67);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
