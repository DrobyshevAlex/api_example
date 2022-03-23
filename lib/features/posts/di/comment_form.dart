import 'package:api_example/features/posts/bloc/comment_form.dart';
import 'package:api_example/features/posts/data/repositories/comments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentFormInj extends StatelessWidget {
  const CommentFormInj({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CommentFormBLoC>(
      create: (context) => CommentFormBLoC(
          commentsRepositiry: context.read<CommentsRepositiry>()),
      child: child,
    );
  }
}
