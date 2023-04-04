import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({
    Key? key,
    required this.asset,
    this.text,
    this.spacing = 32,
  }) : super(key: key);

  final String asset;
  final String? text;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 72),
          child: Image.asset(asset),
        ),
        SizedBox(height: spacing),
        if (text != null) Text(text!),
      ],
    );
  }
}
