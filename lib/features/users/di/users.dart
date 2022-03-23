import 'package:api_example/features/users/bloc/user_list.dart';
import 'package:api_example/features/users/data/repositories/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListInj extends StatelessWidget {
  const UserListInj(this.child, {Key? key}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserListBLoC>(
      create: (context) => UserListBLoC(context.read<UsersRepository>())
        ..add(const UserListEvent.request()),
      child: child,
    );
  }
}
