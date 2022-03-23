import 'package:api_example/features/posts/bloc/comment_list.dart';
import 'package:api_example/features/posts/data/repositories/comments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentListInj extends StatelessWidget {
  const CommentListInj({Key? key, required this.child, required this.postId})
      : super(key: key);
  final Widget child;
  final int postId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CommentListBLoC(
          commentsRepositiry: context.read<CommentsRepositiry>())
        ..add(CommentListEvent.request(postId, 0)),
      child: child,
    );
  }
}
