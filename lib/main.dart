import 'dart:async';

import 'package:api_example/features/app/app.dart';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(() => runApp(const MyApp()), (e, s) {});
}
