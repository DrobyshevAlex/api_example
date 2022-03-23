import 'package:api_example/common/config/defaults.dart';
import 'package:api_example/features/app/presentation/components/simple_app_bar.dart';
import 'package:api_example/features/app/router.dart';
import 'package:api_example/features/posts/bloc/post_list.dart';
import 'package:api_example/features/posts/data/models/post.dart';
import 'package:api_example/features/posts/di/di.dart';
import 'package:api_example/features/posts/presentation/components/components.dart';
import 'package:api_example/features/users/data/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PostListPage extends StatelessWidget {
  const PostListPage({Key? key, this.user}) : super(key: key);
  final UserModel? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
          title: user == null ? 'All posts' : '${user?.name}\'s posts'),
      body: PostListInj(
        child: PostListView(
          user: user,
          limit: ITEMS_PER_PAGE,
        ),
        limit: ITEMS_PER_PAGE,
        userId: user?.id,
      ),
    );
  }
}

class PostListView extends StatefulWidget {
  const PostListView(
      {Key? key, this.user, required this.limit, this.shrinkWrap = false})
      : super(key: key);
  final UserModel? user;
  final int limit;
  final bool shrinkWrap;

  @override
  State<PostListView> createState() => _PostListViewState();
}

class _PostListViewState extends State<PostListView> {
  final PagingController<int, PostModel> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      if (!widget.shrinkWrap) {
        context.read<PostListBLoC>().add(PostListEvent.request(
              pageKey,
              widget.limit,
              widget.user?.id,
            ));
      }
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
    return BlocListener<PostListBLoC, PostListState>(
      listenWhen: (previous, current) => !current.loading,
      listener: (context, state) {
        _pagingController.value = PagingState(
          nextPageKey: state.nextPageKey,
          error: state.error,
          itemList: state.data?.toList(),
        );
      },
      child: PagedListView<int, PostModel>(
        shrinkWrap: widget.shrinkWrap,
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (context, item, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(AppRouter.postShow(item.id));
              },
              child: Card(child: PostListItemView(item: item)),
            );
          },
        ),
      ),
    );
  }
}
