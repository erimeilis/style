import 'package:flutter/material.dart';
import 'package:style/style.dart';

class AppDropdownButton<T> extends StatelessWidget {
  const AppDropdownButton({
    Key? key,
    required this.title,
    required this.items,
    this.value,
    required this.onChanged,
    this.hint,
    this.textLevel = AppTextLevel.p24,
  }) : super(key: key);

  final String title;
  final List<DropdownMenuItem<T>>? items;
  final T? value;
  final void Function(T?) onChanged;
  final Widget? hint;
  final AppTextLevel textLevel;

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
        case AppTextLevel.p20:
          return theme.typography.p20;
          break;
      }
    }();
    return DropdownButtonFormField<T?>(
      decoration: InputDecoration(
        disabledBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        // filled: true,
        labelText: title,
      ),
      hint: hint,
      value: value,
      onChanged: onChanged,
      items: items,
    );
  }
}
