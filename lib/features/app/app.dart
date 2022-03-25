import 'package:api_example/features/app/app_inj.dart';
import 'package:api_example/features/app/presentation/pages/main.dart';
import 'package:api_example/features/app/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppInj(
      child: Consumer<AppTheme>(
        builder: (context, theme, _) => MaterialApp(
          title: 'Demo API',
          theme: theme.themeData,
          home: const SplashPage(),
        ),
      ),
    );
  }
}
