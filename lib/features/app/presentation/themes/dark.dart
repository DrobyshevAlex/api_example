import 'package:api_example/features/app/presentation/themes/default.dart';
import 'package:flutter/material.dart';

class DarkStyle extends DefaultStyle {
  @override
  MaterialColor get primary => Colors.blueGrey;

  @override
  Color get background => Colors.grey[400]!;
}
