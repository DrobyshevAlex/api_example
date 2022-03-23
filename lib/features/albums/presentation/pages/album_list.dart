import 'package:api_example/common/config/defaults.dart';
import 'package:api_example/features/albums/bloc/album_list.dart';
import 'package:api_example/features/albums/data/models/album.dart';
import 'package:api_example/features/albums/di/album_list.dart';
import 'package:api_example/features/albums/presentation/components/album_list_item.dart';
import 'package:api_example/features/app/presentation/components/simple_app_bar.dart';
import 'package:api_example/features/app/router.dart';
import 'package:api_example/features/users/data/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AlbumListPage extends StatelessWidget {
  const AlbumListPage({Key? key, this.user}) : super(key: key);
  final UserModel? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
          title: user == null ? 'All allbums' : '${user?.name}\'s albums'),
      body: AlbumListInj(
        child: AlbumListView(
          user: user,
          limit: ITEMS_PER_PAGE,
        ),
        limit: ITEMS_PER_PAGE,
        userId: user?.id,
      ),
    );
  }
}

class AlbumListView extends StatefulWidget {
  const AlbumListView(
      {Key? key, this.user, required this.limit, this.shrinkWrap = false})
      : super(key: key);
  final UserModel? user;
  final int limit;
  final bool shrinkWrap;

  @override
  State<AlbumListView> createState() => _AlbumListViewState();
}

class _AlbumListViewState extends State<AlbumListView> {
  final PagingController<int, AlbumModel> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      if (!widget.shrinkWrap) {
        context.read<AlbumListBLoC>().add(AlbumListEvent.request(
              widget.user?.id,
              pageKey,
              widget.limit,
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
    return BlocListener<AlbumListBLoC, AlbumListState>(
      listenWhen: (previous, current) => !current.loading,
      listener: (context, state) {
        _pagingController.value = PagingState(
          nextPageKey: state.nextPageKey,
          error: state.error,
          itemList: state.data?.toList(),
        );
      },
      child: PagedListView<int, AlbumModel>(
        shrinkWrap: widget.shrinkWrap,
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (context, item, index) {
            return InkWell(
                onTap: () {
                  Navigator.of(context).push(AppRouter.albumShow(item.id));
                },
                child: Card(child: AlbumListItemView(item: item)));
          },
        ),
      ),
    );
  }
}
