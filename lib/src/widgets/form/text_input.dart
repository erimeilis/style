import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';
import 'package:style/style.dart';

class AppTextInput extends StatefulWidget {
  const AppTextInput({
    Key? key,
    required this.title,
    this.filter = "a-zA-Z0-9",
    this.hide = false,
    this.textLevel = AppTextLevel.p24,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.errorText,
    this.fontSize,
    this.fontWeight,
    this.onChanged,
    this.onComplete,
    this.inputFormatters,
  }) : super(key: key);

  final String title;
  final String? filter;
  final bool hide;
  final AppTextLevel textLevel;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? errorText;
  final double? fontSize;
  final FontWeight? fontWeight;
  final void Function(String)? onChanged;
  final void Function()? onComplete;
  final List<FilteringTextInputFormatter>? inputFormatters;

  @override
  _AppTextInputState createState() => _AppTextInputState();
}

class _AppTextInputState extends State<AppTextInput> {
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final style = () {
      switch (widget.textLevel) {
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
        case AppTextLevel.p20:
          return theme.typography.p20;
          break;
      }
    }();
    return Focus(
        onFocusChange: (hasFocus) {
          if (!hasFocus) {
            widget.onComplete;
          }
        },
        child: TextField(
          style: style.copyWith(color: theme.colors.white),
          obscureText: widget.hide,
          decoration: InputDecoration(
            labelText: widget.title,
            labelStyle: theme.typography.p18.copyWith(color: theme.colors.grey),
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            iconColor: theme.colors.white,
            errorText: widget.errorText,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: theme.colors.grey),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: theme.colors.click),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: theme.colors.grey),
            ),
          ),
          controller: widget.controller,
          onChanged: widget.onChanged,
          onEditingComplete: widget.onComplete,
          inputFormatters: widget.inputFormatters,
        ));
  }
}
