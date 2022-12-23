import 'package:style/src/theme/theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import 'gap.dart';

class AppEdgeInsets extends Equatable {
  const AppEdgeInsets.all(AppGapSize value)
      : left = value,
        top = value,
        right = value,
        bottom = value;

  const AppEdgeInsets.symmetric({
    AppGapSize vertical = AppGapSize.none,
    AppGapSize horizontal = AppGapSize.none,
  })
      : left = horizontal,
        top = vertical,
        right = horizontal,
        bottom = vertical;

  const AppEdgeInsets.only({
    this.left = AppGapSize.none,
    this.top = AppGapSize.none,
    this.right = AppGapSize.none,
    this.bottom = AppGapSize.none,
  });

  const AppEdgeInsets.small6()
      : left = AppGapSize.small6,
        top = AppGapSize.small6,
        right = AppGapSize.small6,
        bottom = AppGapSize.small6;

  const AppEdgeInsets.small8()
      : left = AppGapSize.small8,
        top = AppGapSize.small8,
        right = AppGapSize.small8,
        bottom = AppGapSize.small8;

  const AppEdgeInsets.regular15()
      : left = AppGapSize.regular15,
        top = AppGapSize.regular15,
        right = AppGapSize.regular15,
        bottom = AppGapSize.regular15;

  const AppEdgeInsets.regular18()
      : left = AppGapSize.regular18,
        top = AppGapSize.regular18,
        right = AppGapSize.regular18,
        bottom = AppGapSize.regular18;

  const AppEdgeInsets.big25()
      : left = AppGapSize.big25,
        top = AppGapSize.big25,
        right = AppGapSize.big25,
        bottom = AppGapSize.big25;

  const AppEdgeInsets.big30()
      : left = AppGapSize.big30,
        top = AppGapSize.big30,
        right = AppGapSize.big30,
        bottom = AppGapSize.big30;

  const AppEdgeInsets.big35()
      : left = AppGapSize.big35,
        top = AppGapSize.big35,
        right = AppGapSize.big35,
        bottom = AppGapSize.big35;

  final AppGapSize left;
  final AppGapSize top;
  final AppGapSize right;
  final AppGapSize bottom;

  @override
  List<Object?> get props =>
      [
        left,
        top,
        right,
        bottom,
      ];

  EdgeInsets toEdgeInsets(AppThemeData theme) {
    return EdgeInsets.only(
      left: left.getSpacing(theme),
      top: top.getSpacing(theme),
      right: right.getSpacing(theme),
      bottom: bottom.getSpacing(theme),
    );
  }
}

class AppPadding extends StatelessWidget {
  const AppPadding({
    Key? key,
    this.padding = const AppEdgeInsets.all(AppGapSize.none),
    this.child,
  }) : super(key: key);

  const AppPadding.small({
    Key? key,
    this.child,
  })
      : padding = const AppEdgeInsets.all(AppGapSize.none),
        super(key: key);

  const AppPadding.semiSmall({
    Key? key,
    this.child,
  })
      : padding = const AppEdgeInsets.all(AppGapSize.small8),
        super(key: key);

  const AppPadding.regular({
    Key? key,
    this.child,
  })
      : padding = const AppEdgeInsets.all(AppGapSize.regular15),
        super(key: key);

  const AppPadding.semiBig({
    Key? key,
    this.child,
  })
      : padding = const AppEdgeInsets.all(AppGapSize.big25),
        super(key: key);

  const AppPadding.big({
    Key? key,
    this.child,
  })
      : padding = const AppEdgeInsets.all(AppGapSize.big35),
        super(key: key);

  final AppEdgeInsets padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Padding(
      padding: padding.toEdgeInsets(theme),
      child: child,
    );
  }
}
