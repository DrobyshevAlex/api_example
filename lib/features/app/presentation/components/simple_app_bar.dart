import 'package:flutter/material.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(title),
      titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
