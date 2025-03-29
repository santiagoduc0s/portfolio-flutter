import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff904b3f),
      surfaceTint: Color(0xff904b3f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdad4),
      onPrimaryContainer: Color(0xff733429),
      secondary: Color(0xff775651),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdad4),
      onSecondaryContainer: Color(0xff5d3f3a),
      tertiary: Color(0xff6f5c2e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfffae0a6),
      onTertiaryContainer: Color(0xff564519),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff231918),
      onSurfaceVariant: Color(0xff534340),
      outline: Color(0xff857370),
      outlineVariant: Color(0xffd8c2be),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2c),
      inversePrimary: Color(0xffffb4a7),
      primaryFixed: Color(0xffffdad4),
      onPrimaryFixed: Color(0xff3a0a04),
      primaryFixedDim: Color(0xffffb4a7),
      onPrimaryFixedVariant: Color(0xff733429),
      secondaryFixed: Color(0xffffdad4),
      onSecondaryFixed: Color(0xff2c1511),
      secondaryFixedDim: Color(0xffe7bdb5),
      onSecondaryFixedVariant: Color(0xff5d3f3a),
      tertiaryFixed: Color(0xfffae0a6),
      onTertiaryFixed: Color(0xff251a00),
      tertiaryFixedDim: Color(0xffddc48c),
      onTertiaryFixedVariant: Color(0xff564519),
      surfaceDim: Color(0xffe8d6d3),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xfffceae7),
      surfaceContainerHigh: Color(0xfff7e4e1),
      surfaceContainerHighest: Color(0xfff1dfdb),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5e241a),
      surfaceTint: Color(0xff904b3f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa1594c),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4b2f2a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff87655f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff443409),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7f6b3b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff180f0e),
      onSurfaceVariant: Color(0xff413330),
      outline: Color(0xff5f4f4c),
      outlineVariant: Color(0xff7b6966),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2c),
      inversePrimary: Color(0xffffb4a7),
      primaryFixed: Color(0xffa1594c),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff844136),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff87655f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff6d4d47),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7f6b3b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff655325),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd4c3c0),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xfff7e4e1),
      surfaceContainerHigh: Color(0xffebd9d6),
      surfaceContainerHighest: Color(0xffdfcecb),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff511a11),
      surfaceTint: Color(0xff904b3f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff76362b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3f2521),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff60423c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff392a01),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff58471b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff372926),
      outlineVariant: Color(0xff554643),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2c),
      inversePrimary: Color(0xffffb4a7),
      primaryFixed: Color(0xff76362b),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff592017),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff60423c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff472c27),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff58471b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff403106),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc6b5b2),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffedea),
      surfaceContainer: Color(0xfff1dfdb),
      surfaceContainerHigh: Color(0xffe2d1cd),
      surfaceContainerHighest: Color(0xffd4c3c0),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb4a7),
      surfaceTint: Color(0xffffb4a7),
      onPrimary: Color(0xff561e15),
      primaryContainer: Color(0xff733429),
      onPrimaryContainer: Color(0xffffdad4),
      secondary: Color(0xffe7bdb5),
      onSecondary: Color(0xff442a25),
      secondaryContainer: Color(0xff5d3f3a),
      onSecondaryContainer: Color(0xffffdad4),
      tertiary: Color(0xffddc48c),
      onTertiary: Color(0xff3d2e04),
      tertiaryContainer: Color(0xff564519),
      onTertiaryContainer: Color(0xfffae0a6),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a1110),
      onSurface: Color(0xfff1dfdb),
      onSurfaceVariant: Color(0xffd8c2be),
      outline: Color(0xffa08c89),
      outlineVariant: Color(0xff534340),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfdb),
      inversePrimary: Color(0xff904b3f),
      primaryFixed: Color(0xffffdad4),
      onPrimaryFixed: Color(0xff3a0a04),
      primaryFixedDim: Color(0xffffb4a7),
      onPrimaryFixedVariant: Color(0xff733429),
      secondaryFixed: Color(0xffffdad4),
      onSecondaryFixed: Color(0xff2c1511),
      secondaryFixedDim: Color(0xffe7bdb5),
      onSecondaryFixedVariant: Color(0xff5d3f3a),
      tertiaryFixed: Color(0xfffae0a6),
      onTertiaryFixed: Color(0xff251a00),
      tertiaryFixedDim: Color(0xffddc48c),
      onTertiaryFixedVariant: Color(0xff564519),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff423735),
      surfaceContainerLowest: Color(0xff140c0b),
      surfaceContainerLow: Color(0xff231918),
      surfaceContainer: Color(0xff271d1c),
      surfaceContainerHigh: Color(0xff322826),
      surfaceContainerHighest: Color(0xff3d3230),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd2ca),
      surfaceTint: Color(0xffffb4a7),
      onPrimary: Color(0xff48140c),
      primaryContainer: Color(0xffcc7b6d),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffed2cb),
      onSecondary: Color(0xff381f1b),
      secondaryContainer: Color(0xffae8881),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff4daa0),
      onTertiary: Color(0xff312400),
      tertiaryContainer: Color(0xffa48e5b),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a1110),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffeed7d3),
      outline: Color(0xffc2ada9),
      outlineVariant: Color(0xffa08c88),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfdb),
      inversePrimary: Color(0xff74352a),
      primaryFixed: Color(0xffffdad4),
      onPrimaryFixed: Color(0xff2c0200),
      primaryFixedDim: Color(0xffffb4a7),
      onPrimaryFixedVariant: Color(0xff5e241a),
      secondaryFixed: Color(0xffffdad4),
      onSecondaryFixed: Color(0xff200b08),
      secondaryFixedDim: Color(0xffe7bdb5),
      onSecondaryFixedVariant: Color(0xff4b2f2a),
      tertiaryFixed: Color(0xfffae0a6),
      onTertiaryFixed: Color(0xff181000),
      tertiaryFixedDim: Color(0xffddc48c),
      onTertiaryFixedVariant: Color(0xff443409),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff4e4240),
      surfaceContainerLowest: Color(0xff0d0605),
      surfaceContainerLow: Color(0xff251b1a),
      surfaceContainer: Color(0xff302624),
      surfaceContainerHigh: Color(0xff3b302e),
      surfaceContainerHighest: Color(0xff463b39),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffece8),
      surfaceTint: Color(0xffffb4a7),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffaea0),
      onPrimaryContainer: Color(0xff210100),
      secondary: Color(0xffffece8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe3b9b2),
      onSecondaryContainer: Color(0xff190604),
      tertiary: Color(0xffffeece),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd9c089),
      onTertiaryContainer: Color(0xff110a00),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff1a1110),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffece8),
      outlineVariant: Color(0xffd4beba),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfdb),
      inversePrimary: Color(0xff74352a),
      primaryFixed: Color(0xffffdad4),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb4a7),
      onPrimaryFixedVariant: Color(0xff2c0200),
      secondaryFixed: Color(0xffffdad4),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffe7bdb5),
      onSecondaryFixedVariant: Color(0xff200b08),
      tertiaryFixed: Color(0xfffae0a6),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffddc48c),
      onTertiaryFixedVariant: Color(0xff181000),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff5a4d4b),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff271d1c),
      surfaceContainer: Color(0xff392e2c),
      surfaceContainerHigh: Color(0xff443937),
      surfaceContainerHighest: Color(0xff504442),
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
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
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
