import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:style/src/utils/named.dart';

class AppTypographyData extends Equatable {
  const AppTypographyData({
    required this.button,
    required this.p18,
    required this.p20,
    required this.p24,
    required this.paragraph2,
    required this.t36,
    required this.title2,
    required this.title3,
  });

  factory AppTypographyData.regular() => const AppTypographyData(
        button: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          fontSize: 24,
          height: 1.2,
          decoration: TextDecoration.none,
        ),
        p18: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          height: 1.2,
          decoration: TextDecoration.none,
        ),
        p20: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          fontSize: 20,
          height: 1.2,
          decoration: TextDecoration.none,
        ),
        p24: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          fontSize: 24,
          height: 1.2,
          decoration: TextDecoration.none,
        ),
        paragraph2: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          fontSize: 10,
          decoration: TextDecoration.none,
        ),
        t36: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 36,
          fontWeight: FontWeight.w700,
          decoration: TextDecoration.none,
        ),
        title2: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title3: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 14,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
      );

  factory AppTypographyData.small() => const AppTypographyData(
        button: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          fontSize: 18,
          height: 1.2,
          decoration: TextDecoration.none,
        ),
        p18: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          fontSize: 12,
          decoration: TextDecoration.none,
        ),
        p20: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          decoration: TextDecoration.none,
        ),
        p24: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          decoration: TextDecoration.none,
        ),
        paragraph2: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          fontSize: 9,
          decoration: TextDecoration.none,
        ),
        t36: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 22,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title2: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 14,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title3: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 12,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
      );

  final TextStyle button;
  final TextStyle p18;
  final TextStyle p20;
  final TextStyle p24;
  final TextStyle paragraph2;
  final TextStyle t36;
  final TextStyle title2;
  final TextStyle title3;

  @override
  List<Object?> get props => [
        button.named('button'),
        t36.named('t36'),
        title2.named('title2'),
        title3.named('title3'),
        p18.named('p18'),
        p20.named('p20'),
        p24.named('p24'),
        paragraph2.named('paragraph2'),
      ];
}
