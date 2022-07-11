import 'package:style/src/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class AppSpacingData extends Equatable {
  const AppSpacingData(
      {required this.small,
      required this.semiSmall,
      required this.regular,
      required this.bigger,
      required this.semiBig,
      required this.big,
      required this.large});

  factory AppSpacingData.regular() => const AppSpacingData(
        small: 6,
        semiSmall: 8,
        regular: 15,
        bigger: 18,
        semiBig: 25,
        big: 35,
        large: 97,
      );

  factory AppSpacingData.small() => const AppSpacingData(
        small: 2,
        semiSmall: 4,
        regular: 8,
        bigger: 12,
        semiBig: 15,
        big: 24,
        large: 45,
      );

  final double small;
  final double semiSmall;
  final double regular;
  final double bigger;
  final double semiBig;
  final double big;
  final double large;

  AppEdgeInsetsSpacingData asInsets() => AppEdgeInsetsSpacingData(this);

  @override
  List<Object?> get props => [
        small.named('small'),
        semiSmall.named('semiSmall'),
        regular.named('regular'),
        semiBig.named('semiBig'),
        big.named('big'),
      ];
}

class AppEdgeInsetsSpacingData extends Equatable {
  const AppEdgeInsetsSpacingData(this._spacing);

  EdgeInsets get small => EdgeInsets.all(_spacing.small);

  EdgeInsets get semiSmall => EdgeInsets.all(_spacing.semiSmall);

  EdgeInsets get regular => EdgeInsets.all(_spacing.regular);

  EdgeInsets get semiBig => EdgeInsets.all(_spacing.semiBig);

  EdgeInsets get big => EdgeInsets.all(_spacing.big);

  final AppSpacingData _spacing;

  @override
  List<Object?> get props => [_spacing];
}
