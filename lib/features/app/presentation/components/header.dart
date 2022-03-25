import 'package:api_example/features/app/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key, required this.label, this.textAlign})
      : super(key: key);
  final String label;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) => Text(
        label,
        textAlign: textAlign,
        style: context.watch<AppTheme>().style.headerStyle,
      );
}
