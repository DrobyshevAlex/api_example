import 'package:api_example/features/app/presentation/components/components.dart';
import 'package:api_example/features/app/router.dart';
import 'package:api_example/features/users/bloc/user_list.dart';
import 'package:api_example/features/users/data/models/user.dart';
import 'package:api_example/features/users/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SimpleAppBar(title: 'Demo API'),
      body: UserListInj(UserListView()),
    );
  }
}

class UserListView extends StatefulWidget {
  const UserListView({Key? key}) : super(key: key);

  @override
  State<UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
  final PagingController<int, UserModel> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<UserListBLoC>().add(UserListEvent.request(pageKey));
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
    return BlocListener<UserListBLoC, UserListState>(
      listenWhen: (previous, current) => !current.loading,
      listener: (context, state) {
        _pagingController.value = PagingState(
          nextPageKey: state.nextPageKey,
          error: state.error,
          itemList: state.data?.toList(),
        );
      },
      child: PagedListView<int, UserModel>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (context, item, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(AppRouter.userShow(item.id));
              },
              child: UserListItemView(item: item),
            );
          },
        ),
      ),
    );
  }
}

class UserListItemView extends StatelessWidget {
  const UserListItemView({Key? key, required UserModel item})
      : _item = item,
        super(key: key);
  final UserModel _item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          _item.username,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(_item.name),
      ),
    );
  }
}
