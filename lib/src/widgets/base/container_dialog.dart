import 'package:flutter/widgets.dart';
import 'package:style/src/theme/theme.dart';

import '../../../style.dart';
import 'padding.dart';

class AppContainerDialog extends StatelessWidget {
  const AppContainerDialog({
    Key? key,
    this.width,
    this.height,
    this.child,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppContainer(
      width: width,
      height: height,
      padding: const AppEdgeInsets.big30(),
      margin: null,
      decoration: BoxDecoration(
          borderRadius: theme.radius.asBorderRadius().big,
          color: theme.colors.bg2,
          boxShadow: [BoxShadow(color: theme.colors.black, blurRadius: theme.spacing.small8)]),
      child: child,
    );
  }
}
