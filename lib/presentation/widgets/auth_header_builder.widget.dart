import 'package:all_nations/domain/core/util/util.dart';
import 'package:flutter/material.dart';

Widget authHeaderBuilder(
    BuildContext context, BoxConstraints constraints, double shrinkOffset) {
  return Image.asset(
    isDarkMode
        ? "assets/images/logo/logo_dark.png"
        : "assets/images/logo/logo.png",
    height: 100,
    fit: BoxFit.contain,
  );
}
