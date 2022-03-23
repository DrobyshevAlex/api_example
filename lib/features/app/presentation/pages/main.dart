import 'package:api_example/features/app/bloc/app.dart';
import 'package:api_example/features/app/presentation/components/components.dart';
import 'package:api_example/features/users/presentation/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBLoC, AppState>(
      builder: (context, state) => state.maybeMap(
        success: (sp) => const UserListPage(),
        orElse: () => const LoaderView(),
      ),
    );
  }
}
