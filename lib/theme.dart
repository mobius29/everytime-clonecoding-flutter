// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:everytime_flutter/themes/color.dart';
import 'package:flutter/material.dart';

class Themes {
  static const _lightFillColor = CustomColors.black;
  static final Color _lightFocusColor = CustomColors.black.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.background,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.primary),
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: CustomColors.red,
    primaryContainer: CustomColors.red,
    secondary: CustomColors.blue,
    secondaryContainer: CustomColors.blue,
    background: CustomColors.white,
    surface: CustomColors.gray100,
    onBackground: CustomColors.white,
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: CustomColors.blue,
    onSurface: CustomColors.gray100,
    brightness: Brightness.light,
  );
}
