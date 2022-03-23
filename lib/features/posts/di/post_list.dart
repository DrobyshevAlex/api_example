import 'package:api_example/features/posts/bloc/post_list.dart';
import 'package:api_example/features/posts/data/repositories/posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostListInj extends StatelessWidget {
  const PostListInj({
    Key? key,
    required this.child,
    required this.limit,
    this.userId,
  }) : super(key: key);
  final Widget child;
  final int limit;
  final int? userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostListBLoC>(
      create: (context) => PostListBLoC(context.read<PostsRepository>())
        ..add(PostListEvent.request(0, limit, userId)),
      child: child,
    );
  }
}
