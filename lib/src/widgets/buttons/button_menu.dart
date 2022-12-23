import 'package:style/style.dart';
import 'package:tap_builder/tap_builder.dart';

class AppButtonMenu extends StatelessWidget {
  const AppButtonMenu({
    Key? key,
    required this.title,
    required this.icon,
    this.active = false,
    this.onTap,
    this.mainAxisSize = MainAxisSize.min,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final bool active;
  final MainAxisSize mainAxisSize;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TapBuilder(
      onTap: onTap,
      builder: (context, state, hasFocus) {
        if (active) {
          return Semantics(
            enabled: true,
            selected: true,
            child: AppButtonMenuLayout.pressed(
              title: title,
              icon: icon,
              mainAxisSize: mainAxisSize,
            ),
          );
        }
        switch (state) {
          case TapState.hover:
            return Semantics(
              enabled: true,
              selected: true,
              child: AppButtonMenuLayout.hovered(
                title: title,
                icon: icon,
                mainAxisSize: mainAxisSize,
              ),
            );
          case TapState.pressed:
            return Semantics(
              enabled: true,
              selected: true,
              child: AppButtonMenuLayout.pressed(
                title: title,
                icon: icon,
                mainAxisSize: mainAxisSize,
              ),
            );
          default:
            return Semantics(
              enabled: true,
              selected: true,
              child: AppButtonMenuLayout.inactive(
                title: title,
                icon: icon,
                mainAxisSize: mainAxisSize,
              ),
            );
        }
      },
    );
  }
}

enum AppButtonMenuState {
  inactive,
  hovered,
  pressed,
}

class AppButtonMenuLayout extends StatelessWidget {
  const AppButtonMenuLayout.inactive({Key? key, required this.title, required this.icon, this.mainAxisSize = MainAxisSize.min, this.textColor, this.iconColor})
      : _state = AppButtonMenuState.inactive,
        super(key: key);

  const AppButtonMenuLayout.hovered({Key? key, required this.title, required this.icon, this.mainAxisSize = MainAxisSize.min, this.textColor, this.iconColor})
      : _state = AppButtonMenuState.hovered,
        super(key: key);

  const AppButtonMenuLayout.pressed({Key? key, required this.title, required this.icon, this.mainAxisSize = MainAxisSize.min, this.textColor, this.iconColor})
      : _state = AppButtonMenuState.pressed,
        super(key: key);

  final String title;
  final IconData icon;
  final MainAxisSize mainAxisSize;
  final AppButtonMenuState _state;
  final Color? textColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final title = this.title;
    final icon = this.icon;
    final textColor = () {
      switch (_state) {
        case AppButtonMenuState.inactive:
          return this.textColor ?? theme.colors.white;
        case AppButtonMenuState.hovered:
          return this.textColor ?? theme.colors.click;
        case AppButtonMenuState.pressed:
          return this.textColor ?? theme.colors.click;
      }
    }();
    final iconColor = () {
      switch (_state) {
        case AppButtonMenuState.inactive:
          return this.iconColor ?? theme.colors.icons;
        case AppButtonMenuState.hovered:
          return this.iconColor ?? theme.colors.click;
        case AppButtonMenuState.pressed:
          return this.iconColor ?? theme.colors.click;
      }
    }();
    final fontWeight = () {
      switch (_state) {
        case AppButtonMenuState.inactive:
          return FontWeight.w500;
        case AppButtonMenuState.hovered:
          return FontWeight.w500;
        case AppButtonMenuState.pressed:
          return FontWeight.w700;
      }
    }();
    return AnimatedContainer(
        duration: theme.durations.quick,
        child: AppContainer(
          padding: const AppEdgeInsets.only(top: AppGapSize.regular15, bottom: AppGapSize.regular15, left: AppGapSize.big35),
          child: Row(children: [
            AppContainer(padding: const AppEdgeInsets.only(left: AppGapSize.big35, right: AppGapSize.big25), child: Icon(icon, color: iconColor, size: 32)),
            AppText.button(
              title,
              color: textColor,
              fontWeight: fontWeight,
            )
          ]),
        ));
  }
}
