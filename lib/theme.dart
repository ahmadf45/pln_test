import "package:flutter/material.dart";

class PLNTheme {
  static ColorScheme lightScheme() {
    return ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff7b580d),
      surfaceTint: Color(0xff7b580d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdea9),
      onPrimaryContainer: Color(0xff5f4100),
      secondary: Color(0xff6d5c3f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfff8dfbb),
      onSecondaryContainer: Color(0xff54442a),
      tertiary: Color(0xff006876),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9fefff),
      onTertiaryContainer: Color(0xff004e59),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f3),
      onSurface: Color(0xff201b13),
      onSurfaceVariant: Color(0xff4e4639),
      outline: Color(0xff807667),
      outlineVariant: Color(0xffd2c5b4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff353027),
      inversePrimary: Color(0xffeebf6d),
      primaryFixed: Color(0xffffdea9),
      onPrimaryFixed: Color(0xff271900),
      primaryFixedDim: Color(0xffeebf6d),
      onPrimaryFixedVariant: Color(0xff5f4100),
      secondaryFixed: Color(0xfff8dfbb),
      onSecondaryFixed: Color(0xff251904),
      secondaryFixedDim: Color(0xffdac3a1),
      onSecondaryFixedVariant: Color(0xff54442a),
      tertiaryFixed: Color(0xff9fefff),
      onTertiaryFixed: Color(0xff001f24),
      tertiaryFixedDim: Color(0xff82d3e2),
      onTertiaryFixedVariant: Color(0xff004e59),
      surfaceDim: Color(0xffe3d8cc),
      surfaceBright: Color(0xfffff8f3),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffdf2e5),
      surfaceContainer: Color(0xfff8ecdf),
      surfaceContainerHigh: Color(0xfff2e6d9),
      surfaceContainerHighest: Color(0xffece1d4),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff493200),
      surfaceTint: Color(0xff7b580d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff8c671c),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff42341b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff7d6a4d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003c45),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1a7886),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f3),
      onSurface: Color(0xff151009),
      onSurfaceVariant: Color(0xff3d3529),
      outline: Color(0xff5a5144),
      outlineVariant: Color(0xff766c5d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff353027),
      inversePrimary: Color(0xffeebf6d),
      primaryFixed: Color(0xff8c671c),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff704f01),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff7d6a4d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff635237),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1a7886),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff005e6a),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffcfc5b9),
      surfaceBright: Color(0xfffff8f3),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffdf2e5),
      surfaceContainer: Color(0xfff2e6d9),
      surfaceContainerHigh: Color(0xffe6dbce),
      surfaceContainerHighest: Color(0xffdbd0c3),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3c2800),
      surfaceTint: Color(0xff7b580d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff624400),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff382a12),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff57472c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003139),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff00515c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f3),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff322b20),
      outlineVariant: Color(0xff51483b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff353027),
      inversePrimary: Color(0xffeebf6d),
      primaryFixed: Color(0xff624400),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff452f00),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff57472c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3f3018),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff00515c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003941),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc1b7ab),
      surfaceBright: Color(0xfffff8f3),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffaefe2),
      surfaceContainer: Color(0xffece1d4),
      surfaceContainerHigh: Color(0xffded3c6),
      surfaceContainerHighest: Color(0xffcfc5b9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffeebf6d),
      surfaceTint: Color(0xffeebf6d),
      onPrimary: Color(0xff422c00),
      primaryContainer: Color(0xff5f4100),
      onPrimaryContainer: Color(0xffffdea9),
      secondary: Color(0xffdac3a1),
      onSecondary: Color(0xff3c2e16),
      secondaryContainer: Color(0xff54442a),
      onSecondaryContainer: Color(0xfff8dfbb),
      tertiary: Color(0xff82d3e2),
      onTertiary: Color(0xff00363e),
      tertiaryContainer: Color(0xff004e59),
      onTertiaryContainer: Color(0xff9fefff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff17130b),
      onSurface: Color(0xffece1d4),
      onSurfaceVariant: Color(0xffd2c5b4),
      outline: Color(0xff9a8f80),
      outlineVariant: Color(0xff4e4639),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffece1d4),
      inversePrimary: Color(0xff7b580d),
      primaryFixed: Color(0xffffdea9),
      onPrimaryFixed: Color(0xff271900),
      primaryFixedDim: Color(0xffeebf6d),
      onPrimaryFixedVariant: Color(0xff5f4100),
      secondaryFixed: Color(0xfff8dfbb),
      onSecondaryFixed: Color(0xff251904),
      secondaryFixedDim: Color(0xffdac3a1),
      onSecondaryFixedVariant: Color(0xff54442a),
      tertiaryFixed: Color(0xff9fefff),
      onTertiaryFixed: Color(0xff001f24),
      tertiaryFixedDim: Color(0xff82d3e2),
      onTertiaryFixedVariant: Color(0xff004e59),
      surfaceDim: Color(0xff17130b),
      surfaceBright: Color(0xff3e382f),
      surfaceContainerLowest: Color(0xff120e07),
      surfaceContainerLow: Color(0xff201b13),
      surfaceContainer: Color(0xff241f17),
      surfaceContainerHigh: Color(0xff2f2921),
      surfaceContainerHighest: Color(0xff3a342b),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd693),
      surfaceTint: Color(0xffeebf6d),
      onPrimary: Color(0xff342200),
      primaryContainer: Color(0xffb48a3d),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff1d9b5),
      onSecondary: Color(0xff31240c),
      secondaryContainer: Color(0xffa28e6e),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xff98e9f9),
      onTertiary: Color(0xff002a31),
      tertiaryContainer: Color(0xff499cab),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff17130b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffe8dac9),
      outline: Color(0xffbcb0a0),
      outlineVariant: Color(0xff9a8f7f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffece1d4),
      inversePrimary: Color(0xff604200),
      primaryFixed: Color(0xffffdea9),
      onPrimaryFixed: Color(0xff1a0f00),
      primaryFixedDim: Color(0xffeebf6d),
      onPrimaryFixedVariant: Color(0xff493200),
      secondaryFixed: Color(0xfff8dfbb),
      onSecondaryFixed: Color(0xff1a0f00),
      secondaryFixedDim: Color(0xffdac3a1),
      onSecondaryFixedVariant: Color(0xff42341b),
      tertiaryFixed: Color(0xff9fefff),
      onTertiaryFixed: Color(0xff001418),
      tertiaryFixedDim: Color(0xff82d3e2),
      onTertiaryFixedVariant: Color(0xff003c45),
      surfaceDim: Color(0xff17130b),
      surfaceBright: Color(0xff4a433a),
      surfaceContainerLowest: Color(0xff0a0703),
      surfaceContainerLow: Color(0xff221d15),
      surfaceContainer: Color(0xff2d271f),
      surfaceContainerHigh: Color(0xff383229),
      surfaceContainerHighest: Color(0xff433d34),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffeed6),
      surfaceTint: Color(0xffeebf6d),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffeabb69),
      onPrimaryContainer: Color(0xff120a00),
      secondary: Color(0xffffeed6),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffd6bf9d),
      onSecondaryContainer: Color(0xff120a00),
      tertiary: Color(0xffd0f7ff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff7ecfde),
      onTertiaryContainer: Color(0xff000d11),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff17130b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfffceedc),
      outlineVariant: Color(0xffcec1b0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffece1d4),
      inversePrimary: Color(0xff604200),
      primaryFixed: Color(0xffffdea9),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffeebf6d),
      onPrimaryFixedVariant: Color(0xff1a0f00),
      secondaryFixed: Color(0xfff8dfbb),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffdac3a1),
      onSecondaryFixedVariant: Color(0xff1a0f00),
      tertiaryFixed: Color(0xff9fefff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff82d3e2),
      onTertiaryFixedVariant: Color(0xff001418),
      surfaceDim: Color(0xff17130b),
      surfaceBright: Color(0xff564f45),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff241f17),
      surfaceContainer: Color(0xff353027),
      surfaceContainerHigh: Color(0xff413a31),
      surfaceContainerHighest: Color(0xff4c463c),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
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

  ExtendedColor({
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
  ColorFamily({
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
