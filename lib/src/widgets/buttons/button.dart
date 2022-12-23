import 'package:style/style.dart';
import 'package:tap_builder/tap_builder.dart';

enum AppButtonLevel {
  button,
  p18,
  p20,
  p24,
  paragraph2,
  t36,
  title2,
  title3,
}

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.title,
    this.onTap,
    this.mainAxisSize = MainAxisSize.min,
    this.level = AppButtonLevel.p18,
  }) : super(key: key);

  const AppButton.button({
    Key? key,
    required this.title,
    this.onTap,
    this.mainAxisSize = MainAxisSize.min,
  })  : level = AppButtonLevel.button,
        super(key: key);

  final String title;
  final MainAxisSize mainAxisSize;
  final VoidCallback? onTap;
  final AppButtonLevel level;

  @override
  Widget build(BuildContext context) {
    return TapBuilder(
      onTap: onTap,
      builder: (context, state, hasFocus) {
        switch (state) {
          case TapState.hover:
            return Semantics(
              enabled: true,
              selected: true,
              child: AppButtonLayout.hovered(
                title: title,
                level: level,
                mainAxisSize: mainAxisSize,
              ),
            );
          case TapState.pressed:
            return Semantics(
              enabled: true,
              selected: true,
              child: AppButtonLayout.pressed(
                title: title,
                level: level,
                mainAxisSize: mainAxisSize,
              ),
            );
          case TapState.disabled:
            return Semantics(
              enabled: true,
              selected: true,
              child: AppButtonLayout.disabled(
                title: title,
                level: level,
                mainAxisSize: mainAxisSize,
              ),
            );
          default:
            return Semantics(
              enabled: true,
              selected: true,
              child: AppButtonLayout.inactive(
                title: title,
                level: level,
                mainAxisSize: mainAxisSize,
              ),
            );
        }
      },
    );
  }
}

enum AppButtonState {
  inactive,
  disabled,
  hovered,
  pressed,
}

class AppButtonLayout extends StatelessWidget {
  const AppButtonLayout.inactive({
    Key? key,
    required this.title,
    required this.level,
    this.mainAxisSize = MainAxisSize.min,
    this.inactiveBackgroundColor1,
    this.disabledBackgroundColor1,
    this.hoveredBackgroundColor1,
    this.pressedBackgroundColor1,
    this.inactiveBackgroundColor2,
    this.disabledBackgroundColor2,
    this.hoveredBackgroundColor2,
    this.pressedBackgroundColor2,
    this.foregroundColor,
  })  : _state = AppButtonState.inactive,
        super(key: key);

  const AppButtonLayout.disabled({
    Key? key,
    required this.title,
    required this.level,
    this.mainAxisSize = MainAxisSize.min,
    this.inactiveBackgroundColor1,
    this.disabledBackgroundColor1,
    this.hoveredBackgroundColor1,
    this.pressedBackgroundColor1,
    this.inactiveBackgroundColor2,
    this.disabledBackgroundColor2,
    this.hoveredBackgroundColor2,
    this.pressedBackgroundColor2,
    this.foregroundColor,
  })  : _state = AppButtonState.disabled,
        super(key: key);

  const AppButtonLayout.hovered({
    Key? key,
    required this.title,
    required this.level,
    this.mainAxisSize = MainAxisSize.min,
    this.inactiveBackgroundColor1,
    this.disabledBackgroundColor1,
    this.hoveredBackgroundColor1,
    this.pressedBackgroundColor1,
    this.inactiveBackgroundColor2,
    this.disabledBackgroundColor2,
    this.hoveredBackgroundColor2,
    this.pressedBackgroundColor2,
    this.foregroundColor,
  })  : _state = AppButtonState.hovered,
        super(key: key);

  const AppButtonLayout.pressed({
    Key? key,
    required this.title,
    required this.level,
    this.mainAxisSize = MainAxisSize.min,
    this.inactiveBackgroundColor1,
    this.disabledBackgroundColor1,
    this.hoveredBackgroundColor1,
    this.pressedBackgroundColor1,
    this.inactiveBackgroundColor2,
    this.disabledBackgroundColor2,
    this.hoveredBackgroundColor2,
    this.pressedBackgroundColor2,
    this.foregroundColor,
  })  : _state = AppButtonState.pressed,
        super(key: key);

  final String title;
  final AppButtonLevel level;
  final MainAxisSize mainAxisSize;
  final AppButtonState _state;
  final Color? inactiveBackgroundColor1;
  final Color? disabledBackgroundColor1;
  final Color? hoveredBackgroundColor1;
  final Color? pressedBackgroundColor1;
  final Color? inactiveBackgroundColor2;
  final Color? disabledBackgroundColor2;
  final Color? hoveredBackgroundColor2;
  final Color? pressedBackgroundColor2;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final title = this.title;
    var textlevel = AppTextLevel.p18;
    switch (level) {
      case AppButtonLevel.button:
        textlevel = AppTextLevel.button;
        break;
      case AppButtonLevel.p18:
        textlevel = AppTextLevel.p18;
        break;
      case AppButtonLevel.p20:
        textlevel = AppTextLevel.p20;
        break;
      case AppButtonLevel.p24:
        textlevel = AppTextLevel.p24;
        break;
      case AppButtonLevel.paragraph2:
        textlevel = AppTextLevel.paragraph2;
        break;
      case AppButtonLevel.t36:
        textlevel = AppTextLevel.t36;
        break;
      case AppButtonLevel.title2:
        textlevel = AppTextLevel.title2;
        break;
      case AppButtonLevel.title3:
        textlevel = AppTextLevel.title3;
        break;
    }
    final foregroundColor = this.foregroundColor ?? theme.colors.white;
    final backgroundColor1 = () {
      switch (_state) {
        case AppButtonState.inactive:
          return inactiveBackgroundColor1 ?? theme.colors.btnGradientStart;
        case AppButtonState.disabled:
          return disabledBackgroundColor1 ?? theme.colors.icons;
        case AppButtonState.hovered:
          return hoveredBackgroundColor1 ?? theme.colors.btnHoveredGradientStart;
        case AppButtonState.pressed:
          return pressedBackgroundColor1 ?? theme.colors.btnPressedGradientStart;
      }
    }();
    final backgroundColor2 = () {
      switch (_state) {
        case AppButtonState.inactive:
          return inactiveBackgroundColor2 ?? theme.colors.btnGradientEnd;
        case AppButtonState.disabled:
          return disabledBackgroundColor2 ?? theme.colors.icons;
        case AppButtonState.hovered:
          return hoveredBackgroundColor2 ?? theme.colors.btnHoveredGradientEnd;
        case AppButtonState.pressed:
          return pressedBackgroundColor2 ?? theme.colors.btnPressedGradientEnd;
      }
    }();
    final fontWeight = () {
      switch (_state) {
        case AppButtonState.inactive:
          return FontWeight.w500;
        case AppButtonState.disabled:
          return FontWeight.w500;
        case AppButtonState.hovered:
          return FontWeight.w700;
        case AppButtonState.pressed:
          return FontWeight.w500;
      }
    }();
    return AnimatedContainer(
      duration: theme.durations.quick,
      decoration: BoxDecoration(
        borderRadius: theme.radius.asBorderRadius().big,
        gradient: LinearGradient(begin: const Alignment(0.14, 0.2), end: const Alignment(0.86, 0.8), colors: [backgroundColor1, backgroundColor2]),
      ),
      child: AppContainer(
          padding: const AppEdgeInsets.symmetric(vertical: AppGapSize.regular18, horizontal: AppGapSize.large97),
          child: AppText(title, color: foregroundColor, fontWeight: fontWeight, level: textlevel)),
    );
  }
}
