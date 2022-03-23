import 'package:api_example/features/app/presentation/components/components.dart';
import 'package:api_example/features/posts/bloc/comment_form.dart';
import 'package:api_example/features/posts/bloc/comment_list.dart';
import 'package:api_example/features/posts/bloc/post.dart';
import 'package:api_example/features/posts/data/models/comment.dart';
import 'package:api_example/features/posts/data/models/post.dart';
import 'package:api_example/features/posts/di/comment_form.dart';
import 'package:api_example/features/posts/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key, required this.postId}) : super(key: key);
  final int postId;

  @override
  Widget build(BuildContext context) {
    return PostInj(
      postId: postId,
      child: BlocBuilder<PostBLoC, PostState>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => const LoaderView(),
          success: (PostModel? item) => item == null
              ? const ErrorView(text: 'Post not found!')
              : CommentListInj(postId: postId, child: PostView(item: item)),
          error: (Exception e) => const ErrorView(text: 'Get data error!'),
        ),
      ),
    );
  }
}

class PostView extends StatelessWidget {
  const PostView({Key? key, required this.item}) : super(key: key);
  final PostModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: item.title),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(item.body),
                    const SizedBox(
                      height: 12.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: HeaderView(
              textAlign: TextAlign.center,
              label: 'Comments',
            ),
          ),
          CommentListView(postId: item.id),
          SliverToBoxAdapter(
            child: ElevatedButton(
              onPressed: () async {
                final res = await showModalBottomSheet<bool>(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => BottomSheet(
                    onClosing: () {},
                    builder: (context) => Padding(
                      padding: MediaQuery.of(context).viewInsets,
                      child: SingleChildScrollView(
                        child: CommentFormView(
                          postId: item.id,
                        ),
                      ),
                    ),
                  ),
                );
                if (res == true) {
                  final bloc = context.read<CommentListBLoC>();
                  if (bloc != null) {
                    bloc.add(CommentListEvent.request(item.id, 0));
                  }
                }
              },
              child: const Text('Add comment'),
            ),
          ),
        ],
      ),
    );
  }
}

class CommentListView extends StatefulWidget {
  const CommentListView({Key? key, required this.postId}) : super(key: key);
  final int postId;

  @override
  State<CommentListView> createState() => _CommentListViewState();
}

class _CommentListViewState extends State<CommentListView> {
  final PagingController<int, CommentModel> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context
          .read<CommentListBLoC>()
          .add(CommentListEvent.request(widget.postId, pageKey));
    });
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CommentListBLoC, CommentListState>(
      listenWhen: (previous, current) => !current.loading,
      listener: (context, state) {
        _pagingController.value = PagingState(
          nextPageKey: state.nextPageKey,
          error: state.error,
          itemList: state.data?.toList(),
        );
      },
      child: PagedSliverList<int, CommentModel>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (context, item, index) {
            return CommentListItemView(item: item);
          },
        ),
      ),
    );
  }
}

class CommentListItemView extends StatelessWidget {
  const CommentListItemView({Key? key, required this.item}) : super(key: key);
  final CommentModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(6.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Posted by ${item.name}',
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(item.body),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              item.email,
              style: const TextStyle(color: Colors.grey),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }
}

class CommentFormView extends StatelessWidget {
  const CommentFormView({Key? key, required this.postId}) : super(key: key);
  final int postId;

  @override
  Widget build(BuildContext context) {
    return CommentFormInj(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<CommentFormBLoC, CommentFormState>(
              buildWhen: (previous, current) => previous.name != current.name,
              builder: (context, state) => SimpleField(
                onChanged: (v) => context
                    .read<CommentFormBLoC>()
                    .add(CommentFormEvent.name(v)),
                label: 'Your name',
                errorText: state.name.pure || state.name.error == null
                    ? null
                    : 'Can not be empty',
              ),
            ),
            BlocBuilder<CommentFormBLoC, CommentFormState>(
              buildWhen: (previous, current) => previous.email != current.email,
              builder: (context, state) => SimpleField(
                onChanged: (v) => context
                    .read<CommentFormBLoC>()
                    .add(CommentFormEvent.email(v)),
                label: 'E-mail',
                errorText: state.email.pure || state.email.error == null
                    ? null
                    : 'Enter email',
              ),
            ),
            BlocBuilder<CommentFormBLoC, CommentFormState>(
              buildWhen: (previous, current) => previous.name != current.name,
              builder: (context, state) => SimpleField(
                minLines: 1,
                maxLines: 3,
                onChanged: (v) => context
                    .read<CommentFormBLoC>()
                    .add(CommentFormEvent.body(v)),
                label: 'Type comment...',
                errorText: state.body.pure || state.body.error == null
                    ? null
                    : 'Can not be empty',
              ),
            ),
            BlocConsumer<CommentFormBLoC, CommentFormState>(
                listener: (context, state) {
              if (state.status == FormzStatus.submissionSuccess) {
                Navigator.pop(context, true);
              }
            }, builder: (context, state) {
              return ElevatedButton(
                onPressed: state.status == FormzStatus.valid
                    ? () {
                        context
                            .read<CommentFormBLoC>()
                            .add(CommentFormEvent.request(postId));
                      }
                    : null,
                child: const Text('Submit'),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class SimpleField extends StatelessWidget {
  const SimpleField({
    Key? key,
    required this.label,
    required this.onChanged,
    this.errorText,
    this.minLines,
    this.maxLines,
  }) : super(key: key);
  final String label;
  final ValueChanged<String> onChanged;
  final String? errorText;
  final int? minLines;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      minLines: minLines,
      maxLines: maxLines,
      decoration: InputDecoration(
        label: Text(label),
        errorText: errorText,
      ),
    );
  }
}
