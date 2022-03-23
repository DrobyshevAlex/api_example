import 'package:api_example/features/posts/bloc/post.dart';
import 'package:api_example/features/posts/data/repositories/posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostInj extends StatelessWidget {
  const PostInj({Key? key, required this.child, required this.postId})
      : super(key: key);
  final Widget child;
  final int postId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostBLoC>(
      create: (context) => PostBLoC(context.read<PostsRepository>())
        ..add(PostEvent.request(postId)),
      child: child,
    );
  }
}
