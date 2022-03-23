import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key, this.text}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text ?? 'Error!'),
    );
  }
}
