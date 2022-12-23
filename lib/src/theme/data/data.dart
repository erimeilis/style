import 'package:style/src/theme/data/images.dart';
import 'package:style/src/theme/data/spacing.dart';
import 'package:style/src/theme/data/typography.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colors.dart';
import 'durations.dart';
import 'form_factor.dart';
import 'icons.dart';
import 'radius.dart';
import 'shadows.dart';

class AppThemeData extends Equatable {
  const AppThemeData({
    required this.icons,
    required this.colors,
    required this.typography,
    required this.radius,
    required this.spacing,
    required this.shadow,
    required this.durations,
    required this.formFactor,
    TargetPlatform? platform,
  }) : _platform = platform;

  factory AppThemeData.regular() => AppThemeData(
        formFactor: AppFormFactor.medium,
        icons: AppIconsData.regular(),
        typography: AppTypographyData.regular(),
        colors: AppColorsData.light(),
        radius: const AppRadiusData.regular(),
        spacing: AppSpacingData.regular(),
        shadow: AppShadowsData.regular(),
        durations: AppDurationsData.regular(),
      );

  final AppIconsData icons;
  final AppColorsData colors;
  final AppTypographyData typography;
  final AppRadiusData radius;
  final AppSpacingData spacing;
  final AppShadowsData shadow;
  final AppDurationsData durations;
  final AppFormFactor formFactor;
  final TargetPlatform? _platform;

  TargetPlatform get platform => defaultTargetPlatform;

  @override
  List<Object?> get props => [
        platform,
        icons,
        colors,
        typography,
        radius,
        spacing,
        shadow,
        durations,
      ];

  AppThemeData withColors(AppColorsData colors) {
    return AppThemeData(
      platform: platform,
      formFactor: formFactor,
      colors: colors,
      durations: durations,
      icons: icons,
      radius: radius,
      shadow: shadow,
      spacing: spacing,
      typography: typography,
    );
  }

  AppThemeData withImages(AppImagesData images) {
    return AppThemeData(
      platform: platform,
      formFactor: formFactor,
      colors: colors,
      durations: durations,
      icons: icons,
      radius: radius,
      shadow: shadow,
      spacing: spacing,
      typography: typography,
    );
  }

  AppThemeData withFormFactor(AppFormFactor formFactor) {
    return AppThemeData(
      platform: platform,
      formFactor: formFactor,
      colors: colors,
      durations: durations,
      icons: icons,
      radius: radius,
      shadow: shadow,
      spacing: spacing,
      typography: typography,
    );
  }

  AppThemeData withTypography(AppTypographyData typography) {
    return AppThemeData(
      platform: platform,
      formFactor: formFactor,
      colors: colors,
      durations: durations,
      icons: icons,
      radius: radius,
      shadow: shadow,
      spacing: spacing,
      typography: typography,
    );
  }

  AppThemeData withSpacing(AppSpacingData spacing) {
    return AppThemeData(
      platform: platform,
      formFactor: formFactor,
      colors: colors,
      durations: durations,
      icons: icons,
      radius: radius,
      shadow: shadow,
      spacing: spacing,
      typography: typography,
    );
  }
}
