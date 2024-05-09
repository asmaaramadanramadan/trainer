import 'package:flutter/material.dart';
import 'package:fty/core/utils/size_utils.dart';
import 'package:fty/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyLargeInterBlack90001 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.black90001.withOpacity(0.75),
      );
  static get bodyLargeInterGray90004 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray90004,
      );
  static get bodyLargeInterWhiteA700 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeLatoff030303 => theme.textTheme.bodyLarge!.lato.copyWith(
        color: Color(0XFF030303),
      );
  static get bodyLargeLatoffffffff => theme.textTheme.bodyLarge!.lato.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 17.fSize,
      );
  static get bodyLargeOpenSansPrimary =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
      );
  static get bodyLargePoppinsOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargePoppinsOnPrimaryContainer_1 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyLargePoppinsWhiteA700 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumLatoff92929d =>
      theme.textTheme.bodyMedium!.lato.copyWith(
        color: Color(0XFF92929D),
        fontSize: 13.fSize,
      );
  static get bodyMediumMontserrat => theme.textTheme.bodyMedium!.montserrat;
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumRobotoOnErrorContainer =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyMediumff030303 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF030303),
      );
  static get bodyMediumff056aff => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF056AFF),
      );
  static get bodyMediumff92929d => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF92929D),
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallGray60003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60003,
      );
  static get bodySmallGray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodySmallLatoGray900 => theme.textTheme.bodySmall!.lato.copyWith(
        color: appTheme.gray900.withOpacity(0.7),
      );
  static get bodySmallLatoGray90011 => theme.textTheme.bodySmall!.lato.copyWith(
        color: appTheme.gray900.withOpacity(0.7),
        fontSize: 11.fSize,
      );
  static get bodySmallLatoOnErrorContainer =>
      theme.textTheme.bodySmall!.lato.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallRobotoGray700dd =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray700Dd,
        fontSize: 9.fSize,
      );
  static get bodySmallRobotoGray700dd9 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray700Dd,
        fontSize: 9.fSize,
      );
  static get bodySmallRobotoSecondaryContainer =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  // Display text style
  static get displayMediumPoppins =>
      theme.textTheme.displayMedium!.poppins.copyWith(
        fontSize: 40.fSize,
        fontWeight: FontWeight.w600,
      );
  static get displaySmallPoppins =>
      theme.textTheme.displaySmall!.poppins.copyWith(
        fontSize: 36.fSize,
        fontWeight: FontWeight.w600,
      );
  // Headline text style
  static get headlineLargeff030303 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF030303),
      );
  static get headlineLargeff056aff => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF056AFF),
      );
  static get headlineSmallBlack90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallGray90004 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallInterWhiteA700 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallLatoWhiteA700 =>
      theme.textTheme.headlineSmall!.lato.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeGray90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLato => theme.textTheme.labelLarge!.lato.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeLatoBlueA40002 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.blueA40002,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLatoBluegray100 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.blueGray100,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeLatoGray400 => theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.gray400,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeLatoGray800 => theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.gray800,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeLatoGray900 => theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.gray900,
        fontSize: 13.fSize,
      );
  static get labelLargeLatoGray900Bold =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeLatoLightblueA700 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLatoPrimary => theme.textTheme.labelLarge!.lato.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeLatoSecondaryContainer =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLatoWhiteA700 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeLatoWhiteA700Bold =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRobotoSecondaryContainer =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray90004 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90004,
      );
  static get titleLargeInterGray5001 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInterWhiteA700 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeLatoWhiteA700 =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: appTheme.whiteA700,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeLatoWhiteA700Bold =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack90001Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack90001SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack90001SemiBold_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack90001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumGray5001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5001,
      );
  static get titleMediumGray5001Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterBlack90001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
      );
  static get titleMediumInterErrorContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray500 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray500,
      );
  static get titleMediumInterGray5001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray5001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterWhiteA700 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumLato => theme.textTheme.titleMedium!.lato.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLatoGray900 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.gray900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumLatoWhiteA700 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLatoWhiteA700Bold =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLatoff030303 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: Color(0XFF030303),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLatoff030303_1 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: Color(0XFF030303),
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRedA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA200,
      );
  static get titleMediumRoboto => theme.textTheme.titleMedium!.roboto;
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumUrbanist =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
      );
  static get titleMediumWhiteA700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumff030303 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF030303),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumff056aff => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF056AFF),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray50002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50002,
      );
  static get titleSmallLato => theme.textTheme.titleSmall!.lato.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLatoBlueA400 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.blueA400,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallLatoBlueA40002 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.blueA40002,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLatoGray60002 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.gray60002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallLatoGray900 => theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.gray900,
        fontSize: 15.fSize,
      );
  static get titleSmallLatoGray900Bold =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.gray900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLatoGray900_1 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallLatoWhiteA700 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get titleSmallLatoff030303 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: Color(0XFF030303),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallLatoff192126 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: Color(0XFF192126),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMontserrat =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallff92929d => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF92929D),
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }
}
