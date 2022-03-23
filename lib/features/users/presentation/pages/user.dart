import 'package:api_example/common/util/phone.dart';
import 'package:api_example/features/albums/bloc/album_list.dart';
import 'package:api_example/features/albums/di/album_list.dart';
import 'package:api_example/features/albums/presentation/components/album_list_item.dart';
import 'package:api_example/features/app/presentation/components/components.dart';
import 'package:api_example/features/app/router.dart';
import 'package:api_example/features/posts/bloc/post_list.dart';
import 'package:api_example/features/posts/di/di.dart';
import 'package:api_example/features/posts/presentation/components/components.dart';
import 'package:api_example/features/users/bloc/user.dart';
import 'package:api_example/features/users/data/models/address.dart';
import 'package:api_example/features/users/data/models/company.dart';
import 'package:api_example/features/users/data/models/user.dart';
import 'package:api_example/features/users/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key, required this.userId}) : super(key: key);
  final int userId;

  @override
  Widget build(BuildContext context) {
    return UserInj(
      child: const UserPageView(),
      userId: userId,
    );
  }
}

class UserPageView extends StatelessWidget {
  const UserPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<UserBLoC>().state;
    return Scaffold(
      appBar: SimpleAppBar(
          title: state.maybeWhen(
              orElse: () => 'Loading...',
              success: (UserModel? user) => user?.username ?? 'Error!')),
      body: state.maybeWhen(
          orElse: () => const LoaderView(),
          success: (UserModel? user) => user == null
              ? const ErrorView(
                  text: 'User not found',
                )
              : UserView(user: user),
          error: (e) => const ErrorView(text: 'Server error')),
    );
  }
}

class UserView extends StatelessWidget {
  const UserView({Key? key, required this.user}) : super(key: key);
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _LineItem(
                  label: 'Name',
                  value: user.name,
                ),
                _LineItem(
                  label: 'E-mail',
                  value: user.email,
                ),
                _LineItem(
                  onPressed: () async {
                    final phone = makePhoneLink(user.phone);
                    if (await canLaunch('tel:$phone')) {
                      launch('tel:$phone');
                    }
                  },
                  label: 'Phone',
                  value: user.phone,
                ),
                _LineItem(
                  onPressed: () async {
                    if (await canLaunch(user.website)) {
                      launch(user.website);
                    }
                  },
                  label: 'Website',
                  value: user.website,
                ),
              ],
            ),
          ),
          Card(child: _CompanyItem(company: user.company)),
          InkWell(
            onTap: () {
              launch(
                  'https://maps.google.com/?q=${user.address.geo.lat},${user.address.geo.lng}');
            },
            child: Card(child: _AddressItem(address: user.address)),
          ),
          Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _PostPreview(user: user),
          )),
          Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _AlbumPreview(user: user),
          )),
        ],
      ),
    );
  }
}

class _AddressItem extends StatelessWidget {
  const _AddressItem({Key? key, required this.address}) : super(key: key);
  final AddressModel address;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Address:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(address.full),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 16,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text('${address.geo.lat};${address.geo.lng}'),
            ],
          )
        ],
      ),
    );
  }
}

class _CompanyItem extends StatelessWidget {
  const _CompanyItem({Key? key, required this.company}) : super(key: key);
  final CompanyModel company;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Working: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(company.name),
            ],
          ),
          Text(company.bs),
          Container(
            decoration: const BoxDecoration(
                border:
                    Border(left: BorderSide(width: 3, color: Colors.amber))),
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(company.catchPhrase,
                style: const TextStyle(fontStyle: FontStyle.italic)),
          ),
        ],
      ),
    );
  }
}

class _LineItem extends StatelessWidget {
  const _LineItem({
    Key? key,
    required this.label,
    required this.value,
    this.onPressed,
  }) : super(key: key);
  final String label;
  final String value;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: [
              TextSpan(
                  text: '$label: ',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text: value,
                  style: onPressed != null
                      ? const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline)
                      : null),
            ],
          ),
        ),
      ),
    );
  }
}

class _PostPreview extends StatelessWidget {
  const _PostPreview({Key? key, required this.user}) : super(key: key);
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return PostListInj(
      userId: user.id,
      limit: 3,
      child: BlocBuilder<PostListBLoC, PostListState>(
        builder: (context, state) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeaderView(label: 'User posts'),
            if (state.loading) const LoaderView(),
            if (!state.loading && !state.hasData)
              const Text('User nave not posts'),
            if (!state.loading && state.hasData)
              for (final item in state.data!)
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(AppRouter.postShow(item.id));
                    },
                    child: PostListItemView(item: item)),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(AppRouter.posts(user));
              },
              child: const Text('Show all posts'),
            ),
          ],
        ),
      ),
    );
  }
}

class _AlbumPreview extends StatelessWidget {
  const _AlbumPreview({Key? key, required this.user}) : super(key: key);
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return AlbumListInj(
      userId: user.id,
      limit: 3,
      child: BlocBuilder<AlbumListBLoC, AlbumListState>(
        builder: (context, state) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeaderView(label: 'User albums'),
            if (state.loading) const LoaderView(),
            if (!state.loading && !state.hasData)
              const Text('User nave not albums'),
            if (!state.loading && state.hasData)
              for (final item in state.data!)
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(AppRouter.albumShow(item.id));
                    },
                    child: AlbumListItemView(item: item)),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(AppRouter.albums(user));
              },
              child: const Text('Show all albums'),
            ),
          ],
        ),
      ),
    );
  }
}
