import 'package:api_example/features/posts/data/models/post.dart';
import 'package:flutter/material.dart';

class PostListItemView extends StatelessWidget {
  const PostListItemView({Key? key, required this.item}) : super(key: key);
  final PostModel item;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.black12),
        ),
      ),
      child: ListTile(
        title: Text(item.title),
        subtitle: Row(
          children: [
            Flexible(
              child: Text(
                item.body,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
