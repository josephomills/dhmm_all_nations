import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Dyamic implementation of [ElevatedButton]
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.onTap,
    this.isLoading = false,
    this.widthFactor = 1,
    this.backgroundColor,
    required this.label,
    this.spinnerColor,
    this.height = 56,
    this.textColor,
    this.icon,
    this.shape,
    this.fontSize,
    this.iconColor,
  }) : super(key: key);

  final VoidCallback? onTap;
  final bool isLoading;
  final double widthFactor;
  final Color? backgroundColor;
  final String label;
  final Color? spinnerColor;
  final double height;
  final double? fontSize;
  final Color? textColor;
  final IconData? icon;
  final OutlinedBorder? shape;
  final Color? iconColor;

  factory ButtonWidget.icon({
    Key? key,
    required VoidCallback? onTap,
    bool isLoading = false,
    double widthFactor = 1,
    Color? backgroundColor,
    required String label,
    Color? spinnerColor,
    double height = 56,
    double? fontSize,
    Color? textColor,
    Color? iconColor,
    IconData? icon,
    OutlinedBorder? shape,
  }) =>
      ButtonWidget(
        key: key,
        onTap: onTap,
        isLoading: isLoading,
        label: label,
        icon: icon,
        shape: shape,
        textColor: textColor,
        spinnerColor: spinnerColor,
        backgroundColor: backgroundColor,
        widthFactor: widthFactor,
        iconColor: iconColor,
      );

  @override
  Widget build(BuildContext context) {
    return icon == null
        ? ElevatedButton(
            style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Theme.of(context).colorScheme.outline;
                    }
                    return backgroundColor ??
                        Theme.of(context).colorScheme.primary;
                  }),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(
                      ResponsiveWrapper.of(context).scaledWidth * widthFactor,
                      height,
                    ),
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder?>(shape),
                ),
            onPressed: isLoading ? null : onTap,
            child: isLoading
                ? SpinKitThreeBounce(
                    color:
                        spinnerColor ?? Theme.of(context).colorScheme.onPrimary,
                    size: 40,
                  )
                : Text(
                    label,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: fontSize,
                          color: textColor ??
                              Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
          )
        : ElevatedButton.icon(
            style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Theme.of(context).colorScheme.outline;
                    }
                    return backgroundColor ??
                        Theme.of(context).colorScheme.primary;
                  }),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(
                      ResponsiveWrapper.of(context).scaledWidth * widthFactor,
                      height,
                    ),
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder?>(shape),
                ),
            onPressed: isLoading ? null : onTap,
            icon: Icon(
              icon,
              color: iconColor ?? Theme.of(context).colorScheme.onPrimary,
            ),
            label: isLoading
                ? SpinKitThreeBounce(
                    color:
                        spinnerColor ?? Theme.of(context).colorScheme.onPrimary,
                    size: 40,
                  )
                : Text(
                    label,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: fontSize,
                          color: textColor ??
                              Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
          );
  }
}
