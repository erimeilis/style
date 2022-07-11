import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';
import 'package:style/style.dart';

class AppTextInput extends StatelessWidget {
  const AppTextInput({
    Key? key,
    required this.title,
    this.hide = false,
    this.textLevel = AppTextLevel.p24,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.fontSize,
    this.fontWeight,
    required this.onChanged,
    this.inputFormatters,
  }) : super(key: key);

  final String title;
  final bool hide;
  final AppTextLevel textLevel;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? fontSize;
  final FontWeight? fontWeight;
  final void Function(String) onChanged;
  final List<FilteringTextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final style = () {
      switch (textLevel) {
        case AppTextLevel.button:
          return theme.typography.button;
        case AppTextLevel.p18:
          return theme.typography.p18;
        case AppTextLevel.p24:
          return theme.typography.p24;
        case AppTextLevel.paragraph2:
          return theme.typography.paragraph2;
        case AppTextLevel.t36:
          return theme.typography.t36;
        case AppTextLevel.title2:
          return theme.typography.title2;
        case AppTextLevel.title3:
          return theme.typography.title3;
      }
    }();
    return TextField(
      obscureText: hide,
      decoration: InputDecoration(labelText: title, labelStyle: style, prefixIcon: prefixIcon, suffixIcon: suffixIcon),
      controller: controller,
      onChanged: onChanged,
      inputFormatters: inputFormatters,
    );
  }
}
