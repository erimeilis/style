import 'package:flutter/material.dart';
import 'package:style/style.dart';

class AppTextLink extends StatelessWidget {
  const AppTextLink({
    Key? key,
    required this.title,
    this.textLevel = AppTextLevel.p24,
    this.fontSize,
    this.fontWeight,
    this.onTap,
  }) : super(key: key);

  final String title;
  final AppTextLevel textLevel;
  final double? fontSize;
  final FontWeight? fontWeight;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final style = () {
      switch (textLevel) {
        case AppTextLevel.button:
          return theme.typography.button;
        case AppTextLevel.p18:
          return theme.typography.p18;
        case AppTextLevel.p20:
          return theme.typography.p20;
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
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return states.contains(MaterialState.pressed) ? theme.colors.icons : theme.colors.click;
          },
        ),
        textStyle: MaterialStateProperty.resolveWith<TextStyle>(
          (Set<MaterialState> states) {
            return states.contains(MaterialState.hovered) || states.contains(MaterialState.pressed)
                ? style.copyWith(fontSize: fontSize, fontWeight: fontWeight, decoration: TextDecoration.underline)
                : style.copyWith(fontSize: fontSize, fontWeight: fontWeight, decoration: TextDecoration.none);
          },
        ),
      ),
      onPressed: onTap,
      child: Text(title),
    );
  }
}
