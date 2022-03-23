import 'package:api_example/features/app/app_inj.dart';
import 'package:api_example/features/app/presentation/pages/main.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppInj(
      child: MaterialApp(
        title: 'Demo API',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: Colors.grey[100],
        ),
        home: const SplashPage(),
      ),
    );
  }
}
