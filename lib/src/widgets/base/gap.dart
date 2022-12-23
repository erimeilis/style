import 'package:style/src/theme/theme.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

enum AppGapSize {
  none,
  small6,
  small8,
  regular15,
  regular18,
  big25,
  big30,
  big35,
  large97,
}

extension AppGapSizeExtension on AppGapSize {
  double getSpacing(AppThemeData theme) {
    switch (this) {
      case AppGapSize.none:
        return 0;
      case AppGapSize.small6:
        return theme.spacing.small6;
      case AppGapSize.small8:
        return theme.spacing.small8;
      case AppGapSize.regular15:
        return theme.spacing.regular15;
      case AppGapSize.regular18:
        return theme.spacing.regular18;
      case AppGapSize.big25:
        return theme.spacing.big25;
      case AppGapSize.big30:
        return theme.spacing.big30;
      case AppGapSize.big35:
        return theme.spacing.big35;
      case AppGapSize.large97:
        return theme.spacing.large97;
    }
  }
}

class AppGap extends StatelessWidget {
  const AppGap(
    this.size, {
    Key? key,
  }) : super(key: key);

  const AppGap.small6({
    Key? key,
  })  : size = AppGapSize.small6,
        super(key: key);

  const AppGap.small8({
    Key? key,
  })  : size = AppGapSize.small8,
        super(key: key);

  const AppGap.regular15({
    Key? key,
  })  : size = AppGapSize.regular15,
        super(key: key);

  const AppGap.regular18({
    Key? key,
  })  : size = AppGapSize.regular18,
        super(key: key);

  const AppGap.big25({
    Key? key,
  })  : size = AppGapSize.big25,
        super(key: key);

  const AppGap.big30({
    Key? key,
  })  : size = AppGapSize.big30,
        super(key: key);

  const AppGap.big35({
    Key? key,
  })  : size = AppGapSize.big35,
        super(key: key);

  const AppGap.large97({
    Key? key,
  })  : size = AppGapSize.large97,
        super(key: key);

  final AppGapSize size;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Gap(size.getSpacing(theme));
  }
}
