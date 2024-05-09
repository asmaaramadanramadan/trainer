import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';

class AppDecoration {
  // Black decorations
  static BoxDecoration get black => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );

  // Disabled decorations
  static BoxDecoration get disabled => BoxDecoration(
        border: Border.all(
          color: appTheme.teal50,
          width: 1.h,
        ),
      );

  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001,
      );
  static BoxDecoration get fillBlack90001 => BoxDecoration(
        color: appTheme.black90001.withOpacity(0.4),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue80026,
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA700,
      );
  static BoxDecoration get fillBlueA400 => BoxDecoration(
        color: appTheme.blueA400,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray50,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90003.withOpacity(0.5),
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray400 => BoxDecoration(
        color: appTheme.gray400,
      );
  static BoxDecoration get fillGray600 => BoxDecoration(
        color: appTheme.gray600,
      );
  static BoxDecoration get fillGray60001 => BoxDecoration(
        color: appTheme.gray60001.withOpacity(0.1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.55),
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.25, 0.5),
          end: Alignment(1, 0.54),
          colors: [
            appTheme.black90001.withOpacity(0.5),
            appTheme.black90001.withOpacity(0.5),
          ],
        ),
      );
  static BoxDecoration get gradientBlackToBlack90001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.35, 0.54),
          end: Alignment(0.99, 0.59),
          colors: [
            appTheme.black90001.withOpacity(0.51),
            appTheme.black90001.withOpacity(0.51),
          ],
        ),
      );
  static BoxDecoration get gradientBlueAToBlueA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.65, 0.47),
          end: Alignment(0.92, 0.47),
          colors: [
            appTheme.blueA700,
            appTheme.blueA700.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientGrayToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.13, 0.5),
          end: Alignment(0.98, 0.5),
          colors: [
            appTheme.gray80001,
            appTheme.black90001.withOpacity(0),
          ],
        ),
      );

  // Grey decorations
  static BoxDecoration get grey => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get greyWhite => BoxDecoration(
        color: appTheme.gray5001,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1.h,
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.gray90003.withOpacity(0.75),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90003.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -0.77,
              -0.77,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray5001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90001 => BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray10002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.gray60001.withOpacity(0.25),
            width: 1.h,
          ),
          bottom: BorderSide(
            color: appTheme.gray60001.withOpacity(0.25),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray30003 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray30003,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray5003 => BoxDecoration(
        border: Border(
          right: BorderSide(
            color: appTheme.gray5003,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray60001 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray60001.withOpacity(0.25),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.gray5001,
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.1),
          width: 2.h,
          strokeAlign: strokeAlignOutside,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteA700,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.primary.withOpacity(0.1),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.whiteA700.withOpacity(0.1),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border(
          right: BorderSide(
            color: appTheme.whiteA700,
            width: 1.h,
          ),
        ),
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.gray5001,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder13 => BorderRadius.circular(
        13.h,
      );
  static BorderRadius get circleBorder19 => BorderRadius.circular(
        19.h,
      );
  static BorderRadius get circleBorder27 => BorderRadius.circular(
        27.h,
      );
  static BorderRadius get circleBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL19 => BorderRadius.only(
        topLeft: Radius.circular(19.h),
        topRight: Radius.circular(19.h),
        bottomRight: Radius.circular(19.h),
      );
  static BorderRadius get customBorderTL191 => BorderRadius.only(
        topLeft: Radius.circular(19.h),
        topRight: Radius.circular(19.h),
        bottomLeft: Radius.circular(19.h),
      );
  static BorderRadius get customBorderTL22 => BorderRadius.horizontal(
        left: Radius.circular(22.h),
      );
  static BorderRadius get customBorderTL24 => BorderRadius.vertical(
        top: Radius.circular(24.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder22 => BorderRadius.circular(
        22.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
