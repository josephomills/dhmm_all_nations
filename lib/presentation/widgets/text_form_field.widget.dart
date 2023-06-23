import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    this.text,
    this.validator,
    this.onChanged,
    this.onTap,
    required this.label,
    required this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.autoCorrect = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.enabled,
    this.readOnly = false,
    this.allowInteractiveSelection,
  }) : super(key: key);

  final String? text;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final String label;
  final String hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool autoCorrect;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final bool? enabled;
  final bool readOnly;
  final bool? allowInteractiveSelection;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      readOnly: readOnly,
      enableInteractiveSelection: allowInteractiveSelection,
      initialValue: text,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: TextCapitalization.none,
      autocorrect: autoCorrect,
      obscureText: obscureText,
      decoration: const InputDecoration()
          .applyDefaults(Theme.of(context).inputDecorationTheme)
          .copyWith(
            labelText: label,
            hintText: hint,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
      validator: validator,
      onChanged: onChanged,
      onTap: onTap,
    );
  }
}
