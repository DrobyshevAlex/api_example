import 'package:api_example/features/users/bloc/user.dart';
import 'package:api_example/features/users/data/repositories/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInj extends StatelessWidget {
  const UserInj({Key? key, required this.child, required this.userId})
      : super(key: key);
  final Widget child;
  final int userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBLoC(context.read<UsersRepository>())
        ..add(UserEvent.request(userId)),
      child: child,
    );
  }
}
