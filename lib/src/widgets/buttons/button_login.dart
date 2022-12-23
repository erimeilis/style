import 'package:flutter/material.dart';
import 'package:style/style.dart';

class AppButtonLogin extends StatelessWidget {
  const AppButtonLogin({
    Key? key,
    this.icon,
    required this.title,
    this.onTap,
    this.backgroundColor,
    this.foregroundColor,
  }) : super(key: key);

  final Widget? icon;
  final String title;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppContainer(
        padding: const AppEdgeInsets.symmetric(vertical: AppGapSize.none, horizontal: AppGapSize.regular18),
        child: MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: theme.radius.asBorderRadius().small),
            color: backgroundColor,
            onPressed: onTap,
            child: AppContainer(
                padding: const AppEdgeInsets.symmetric(vertical: AppGapSize.small8, horizontal: AppGapSize.small6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    AppContainer(
                      padding: const AppEdgeInsets.only(left: AppGapSize.small8, right: AppGapSize.small6),
                      child: icon,
                    ),
                    AppText.button(
                      title,
                      color: foregroundColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ))));
  }
}
