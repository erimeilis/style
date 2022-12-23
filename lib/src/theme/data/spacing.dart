import 'package:style/src/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class AppSpacingData extends Equatable {
  const AppSpacingData(
      {required this.small6,
      required this.small8,
      required this.regular15,
      required this.regular18,
      required this.big25,
      required this.big30,
      required this.big35,
      required this.large97});

  factory AppSpacingData.regular() => const AppSpacingData(
        small6: 6,
        small8: 8,
        regular15: 15,
        regular18: 18,
        big25: 25,
        big30: 30,
        big35: 35,
        large97: 97,
      );

  factory AppSpacingData.small() => const AppSpacingData(
        small6: 2,
        small8: 4,
        regular15: 8,
        regular18: 12,
        big25: 15,
        big30: 20,
        big35: 24,
        large97: 45,
      );

  final double small6;
  final double small8;
  final double regular15;
  final double regular18;
  final double big25;
  final double big30;
  final double big35;
  final double large97;

  AppEdgeInsetsSpacingData asInsets() => AppEdgeInsetsSpacingData(this);

  @override
  List<Object?> get props => [
        small6.named('small6'),
        small8.named('small8'),
        regular15.named('regular15'),
        regular18.named('regular15'),
        big25.named('big25'),
        big30.named('big30'),
        big35.named('big35'),
        large97.named('large97')
      ];
}

class AppEdgeInsetsSpacingData extends Equatable {
  const AppEdgeInsetsSpacingData(this._spacing);

  EdgeInsets get small6 => EdgeInsets.all(_spacing.small6);

  EdgeInsets get small8 => EdgeInsets.all(_spacing.small8);

  EdgeInsets get regular15 => EdgeInsets.all(_spacing.regular15);

  EdgeInsets get regular18 => EdgeInsets.all(_spacing.regular18);

  EdgeInsets get big25 => EdgeInsets.all(_spacing.big25);

  EdgeInsets get big30 => EdgeInsets.all(_spacing.big30);

  EdgeInsets get big35 => EdgeInsets.all(_spacing.big35);

  final AppSpacingData _spacing;

  @override
  List<Object?> get props => [_spacing];
}
