import 'package:flutter/widgets.dart';
import 'package:style/src/theme/theme.dart';
import 'package:style/style.dart';
import 'package:tap_builder/tap_builder.dart';

enum AppIconSize {
  small,
  regular,
  big,
}

extension AppIconSizeExtension on AppIconSizesData {
  double resolve(AppIconSize size) {
    switch (size) {
      case AppIconSize.small:
        return small;
      case AppIconSize.regular:
        return regular;
      case AppIconSize.big:
        return big;
    }
  }
}

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.data, {
    Key? key,
    this.color,
    this.active = false,
    this.onTap,
    this.size = AppIconSize.regular,
  }) : super(key: key);

  const AppIcon.small(
    this.data, {
    Key? key,
    this.color,
    this.active = false,
    this.onTap,
  })  : size = AppIconSize.small,
        super(key: key);

  const AppIcon.regular(
    this.data, {
    Key? key,
    this.color,
    this.active = false,
    this.onTap,
  })  : size = AppIconSize.regular,
        super(key: key);

  const AppIcon.big(
    this.data, {
    Key? key,
    this.color,
    this.active = false,
    this.onTap,
  })  : size = AppIconSize.big,
        super(key: key);

  final IconData data;
  final Color? color;
  final bool active;
  final VoidCallback? onTap;
  final AppIconSize size;

  @override
  Widget build(BuildContext context) {
    return onTap != null
        ? TapBuilder(
            onTap: onTap,
            builder: (context, state, hasFocus) {
              if (active) {
                return Semantics(
                  enabled: true,
                  selected: true,
                  child: AppIconLayout.pressed(data: data, size: size, color: color, onTap: onTap),
                );
              }
              switch (state) {
                case TapState.hover:
                  return Semantics(
                    enabled: true,
                    selected: true,
                    child: AppIconLayout.hovered(data: data, size: size, color: color, onTap: onTap),
                  );
                case TapState.pressed:
                  return Semantics(
                    enabled: true,
                    selected: true,
                    child: AppIconLayout.pressed(data: data, size: size, color: color, onTap: onTap),
                  );
                default:
                  return Semantics(
                    enabled: true,
                    selected: true,
                    child: AppIconLayout.inactive(data: data, size: size, color: color, onTap: onTap),
                  );
              }
            },
          )
        : Semantics(
            enabled: true,
            selected: true,
            child: AppIconLayout.inactive(data: data, size: size, color: color, onTap: onTap),
          );
  }
}

enum AppIconState {
  inactive,
  hovered,
  pressed,
}

class AppIconLayout extends StatelessWidget {
  const AppIconLayout.inactive({Key? key, required this.data, this.color, this.onTap, required this.size})
      : _state = AppIconState.inactive,
        super(key: key);

  const AppIconLayout.hovered({Key? key, required this.data, this.color, this.onTap, required this.size})
      : _state = AppIconState.hovered,
        super(key: key);

  const AppIconLayout.pressed({Key? key, required this.data, this.color, this.onTap, required this.size})
      : _state = AppIconState.pressed,
        super(key: key);

  final IconData data;
  final Color? color;
  final VoidCallback? onTap;
  final AppIconSize size;
  final AppIconState _state;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final iconColor = () {
      switch (_state) {
        case AppIconState.inactive:
          return color ?? theme.colors.icons;
        case AppIconState.hovered:
          return theme.colors.click;
        case AppIconState.pressed:
          return theme.colors.click;
      }
    }();

    return AnimatedContainer(duration: theme.durations.quick, child: Icon(data, color: iconColor));
  }
}
