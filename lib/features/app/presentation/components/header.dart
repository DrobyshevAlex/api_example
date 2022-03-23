import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key, required this.label, this.textAlign})
      : super(key: key);
  final String label;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) => Text(
        label,
        textAlign: textAlign,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black26,
        ),
      );
}
