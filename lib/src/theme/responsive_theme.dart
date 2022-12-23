import 'dart:ui' as ui;

import 'package:style/src/theme/data/form_factor.dart';
import 'package:style/src/theme/data/typography.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../style.dart';

enum AppThemeColorMode {
  light,
  dark,
}

/// Updates automatically the [AppTheme] regarding the current [MediaQuery],
/// as soon as the [theme] isn't overriden.
class AppResponsiveTheme extends StatelessWidget {
  const AppResponsiveTheme({
    Key? key,
    required this.child,
    this.appLogo,
    this.darkAppLogo,
    this.colorMode,
    this.formFactor,
  }) : super(key: key);

  final AppThemeColorMode? colorMode;
  final AppFormFactor? formFactor;
  final Widget child;
  final PictureProvider? appLogo;
  final PictureProvider? darkAppLogo;

  static AppThemeColorMode colorModeOf(BuildContext context) {
    final platformBrightness = MediaQuery.platformBrightnessOf(context);
    final useDarkTheme = platformBrightness == ui.Brightness.dark;
    if (useDarkTheme) {
      return AppThemeColorMode.dark;
    }

    return AppThemeColorMode.light;
  }

  static AppFormFactor formFactorOf(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    if (mediaQuery.size.width <= 640) {
      return AppFormFactor.small;
    } else if (mediaQuery.size.width <= 1024) {
      return AppFormFactor.medium;
    }

    return AppFormFactor.large;
  }

  @override
  Widget build(BuildContext context) {
    var theme = AppThemeData.regular();

    /// Updating the colors for the current brightness
    final colorMode = this.colorMode ?? colorModeOf(context);
    switch (colorMode) {
      case AppThemeColorMode.dark:
        theme = theme.withColors(AppColorsData.dark());
        break;
      case AppThemeColorMode.light:
        break;
    }

    // Updating the sizes for current form factor.
    var formFactor = this.formFactor ?? formFactorOf(context);
    theme = theme.withFormFactor(formFactor);
    if (formFactor == AppFormFactor.small) {
      theme = theme.withTypography(AppTypographyData.small()).withSpacing(AppSpacingData.small());
    }

    return DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [theme.colors.bgGradientStart, theme.colors.bgGradientEnd], begin: Alignment.topRight),
        ),
        child: AppTheme(
          data: theme,
          child: child,
        ));
  }
}
