import 'package:api_example/common/providers/custom_app_theme.dart';
import 'package:flutter/material.dart';

class DefaultStyle extends AppStyle {
  MaterialColor get primary => Colors.orange;
  Color get background => Colors.grey[100]!;

  TextStyle get headerStyle => const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black26,
      );

  @override
  ThemeData get themeData => ThemeData(
        primarySwatch: primary,
        scaffoldBackgroundColor: background,
      );
}
