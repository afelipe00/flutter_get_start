import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(BuildContext context, String bodyFontString, String displayFontString) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme bodyTextTheme = GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);
  TextTheme displayTextTheme = GoogleFonts.getTextTheme(displayFontString, baseTextTheme);
  TextTheme textTheme = displayTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );
  return textTheme;
}

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff006b5e),
      surfaceTint: Color(0xff006b5e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff9ff2e1),
      onPrimaryContainer: Color(0xff00201b),
      secondary: Color(0xff39608f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd3e4ff),
      onSecondaryContainer: Color(0xff001c38),
      tertiary: Color(0xff00677c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffb1ecff),
      onTertiaryContainer: Color(0xff001f27),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff171d1e),
      onSurfaceVariant: Color(0xff46464f),
      outline: Color(0xff767680),
      outlineVariant: Color(0xffc6c5d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xff83d5c6),
      primaryFixed: Color(0xff9ff2e1),
      onPrimaryFixed: Color(0xff00201b),
      primaryFixedDim: Color(0xff83d5c6),
      onPrimaryFixedVariant: Color(0xff005046),
      secondaryFixed: Color(0xffd3e4ff),
      onSecondaryFixed: Color(0xff001c38),
      secondaryFixedDim: Color(0xffa3c9fe),
      onSecondaryFixedVariant: Color(0xff1e4875),
      tertiaryFixed: Color(0xffb1ecff),
      onTertiaryFixed: Color(0xff001f27),
      tertiaryFixedDim: Color(0xff86d1e9),
      onTertiaryFixedVariant: Color(0xff004e5e),
      surfaceDim: Color(0xffd5dbdc),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f6),
      surfaceContainer: Color(0xffe9eff0),
      surfaceContainerHigh: Color(0xffe3e9ea),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004c43),
      surfaceTint: Color(0xff006b5e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2a8274),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff184471),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff5077a7),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff004a59),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff2c7e94),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff171d1e),
      onSurfaceVariant: Color(0xff42424b),
      outline: Color(0xff5e5e67),
      outlineVariant: Color(0xff7a7a83),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xff83d5c6),
      primaryFixed: Color(0xff2a8274),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00685c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5077a7),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff365e8c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff2c7e94),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff006579),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd5dbdc),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f6),
      surfaceContainer: Color(0xffe9eff0),
      surfaceContainerHigh: Color(0xffe3e9ea),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002822),
      surfaceTint: Color(0xff006b5e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004c43),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff002343),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff184471),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff00262f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff004a59),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff23232b),
      outline: Color(0xff42424b),
      outlineVariant: Color(0xff42424b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffa8fceb),
      primaryFixed: Color(0xff004c43),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00332c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff184471),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff002e55),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff004a59),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff00323d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd5dbdc),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f6),
      surfaceContainer: Color(0xffe9eff0),
      surfaceContainerHigh: Color(0xffe3e9ea),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff83d5c6),
      surfaceTint: Color(0xff83d5c6),
      onPrimary: Color(0xff003730),
      primaryContainer: Color(0xff005046),
      onPrimaryContainer: Color(0xff9ff2e1),
      secondary: Color(0xffa3c9fe),
      onSecondary: Color(0xff00315b),
      secondaryContainer: Color(0xff1e4875),
      onSecondaryContainer: Color(0xffd3e4ff),
      tertiary: Color(0xff86d1e9),
      onTertiary: Color(0xff003642),
      tertiaryContainer: Color(0xff004e5e),
      onTertiaryContainer: Color(0xffb1ecff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffdee3e5),
      onSurfaceVariant: Color(0xffc6c5d0),
      outline: Color(0xff90909a),
      outlineVariant: Color(0xff46464f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff006b5e),
      primaryFixed: Color(0xff9ff2e1),
      onPrimaryFixed: Color(0xff00201b),
      primaryFixedDim: Color(0xff83d5c6),
      onPrimaryFixedVariant: Color(0xff005046),
      secondaryFixed: Color(0xffd3e4ff),
      onSecondaryFixed: Color(0xff001c38),
      secondaryFixedDim: Color(0xffa3c9fe),
      onSecondaryFixedVariant: Color(0xff1e4875),
      tertiaryFixed: Color(0xffb1ecff),
      onTertiaryFixed: Color(0xff001f27),
      tertiaryFixedDim: Color(0xff86d1e9),
      onTertiaryFixedVariant: Color(0xff004e5e),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff171d1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff87daca),
      surfaceTint: Color(0xff83d5c6),
      onPrimary: Color(0xff001a16),
      primaryContainer: Color(0xff4b9e90),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffa9cdff),
      onSecondary: Color(0xff00172f),
      secondaryContainer: Color(0xff6d93c5),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xff8ad6ed),
      onTertiary: Color(0xff001920),
      tertiaryContainer: Color(0xff4d9bb1),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0e1415),
      onSurface: Color(0xfff6fcfd),
      onSurfaceVariant: Color(0xffcbcad4),
      outline: Color(0xffa3a2ac),
      outlineVariant: Color(0xff82828c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff005248),
      primaryFixed: Color(0xff9ff2e1),
      onPrimaryFixed: Color(0xff001511),
      primaryFixedDim: Color(0xff83d5c6),
      onPrimaryFixedVariant: Color(0xff003e36),
      secondaryFixed: Color(0xffd3e4ff),
      onSecondaryFixed: Color(0xff001226),
      secondaryFixedDim: Color(0xffa3c9fe),
      onSecondaryFixedVariant: Color(0xff033764),
      tertiaryFixed: Color(0xffb1ecff),
      onTertiaryFixed: Color(0xff00141a),
      tertiaryFixedDim: Color(0xff86d1e9),
      onTertiaryFixedVariant: Color(0xff003c49),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff171d1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffebfff9),
      surfaceTint: Color(0xff83d5c6),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff87daca),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffafaff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffa9cdff),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff5fcff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff8ad6ed),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffdfaff),
      outline: Color(0xffcbcad4),
      outlineVariant: Color(0xffcbcad4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff00302a),
      primaryFixed: Color(0xffa3f6e6),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff87daca),
      onPrimaryFixedVariant: Color(0xff001a16),
      secondaryFixed: Color(0xffdae8ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffa9cdff),
      onSecondaryFixedVariant: Color(0xff00172f),
      tertiaryFixed: Color(0xffbeeeff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff8ad6ed),
      onTertiaryFixedVariant: Color(0xff001920),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff171d1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
