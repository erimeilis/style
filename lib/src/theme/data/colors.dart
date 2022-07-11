import 'package:style/src/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

class AppColorsData extends Equatable {
  const AppColorsData(
      {required this.bgGradientStart,
      required this.bgGradientEnd,
      required this.dark,
      required this.bg2,
      required this.icons,
      required this.white,
      required this.black,
      required this.btnHighlight,
      required this.btnGradientStart,
      required this.btnGradientEnd,
      required this.btnHoveredGradientStart,
      required this.btnHoveredGradientEnd,
      required this.btnPressedGradientStart,
      required this.btnPressedGradientEnd,
      required this.click,
      required this.grey,
      required this.greyLight});

  factory AppColorsData.light() => const AppColorsData(
        bgGradientStart: Color(0xFF2F2057),
        bgGradientEnd: Color(0xFF12122E),
        dark: Color(0xFF201941),
        bg2: Color(0xFF30235B),
        icons: Color(0xFF705EA8),
        white: Color(0xFF333333),
        black: Color(0xFF000000),
        btnHighlight: Color(0xFFB21BCB),
        btnGradientStart: Color(0xFF931FA6),
        btnGradientEnd: Color(0xFFC514AC),
        btnHoveredGradientStart: Color(0xFFB21BCB),
        btnHoveredGradientEnd: Color(0xFFDE17C2),
        btnPressedGradientStart: Color(0xFF751185),
        btnPressedGradientEnd: Color(0xFFA1138D),
        click: Color(0xFFEE84DE),
        grey: Color(0xFF948CA4),
        greyLight: Color(0xFFDADADA),
      );

  factory AppColorsData.dark() => const AppColorsData(
        bgGradientStart: Color(0xFF2F2057),
        bgGradientEnd: Color(0xFF12122E),
        dark: Color(0xFF201941),
        bg2: Color(0xFF30235B),
        icons: Color(0xFF705EA8),
        white: Color(0xFFFFFFFF),
        black: Color(0xFF000000),
        btnHighlight: Color(0xFFB21BCB),
        btnGradientStart: Color(0xFF931FA6),
        btnGradientEnd: Color(0xFFC514AC),
        btnHoveredGradientStart: Color(0xFFB21BCB),
        btnHoveredGradientEnd: Color(0xFFDE17C2),
        btnPressedGradientStart: Color(0xFF751185),
        btnPressedGradientEnd: Color(0xFFA1138D),
        click: Color(0xFFEE84DE),
        grey: Color(0xFF948CA4),
        greyLight: Color(0xFFDADADA),
      );

  final Color bgGradientStart;
  final Color bgGradientEnd;
  final Color dark;
  final Color bg2;
  final Color icons;
  final Color white;
  final Color black;
  final Color btnHighlight;
  final Color btnGradientStart;
  final Color btnGradientEnd;
  final Color btnHoveredGradientStart;
  final Color btnHoveredGradientEnd;
  final Color btnPressedGradientStart;
  final Color btnPressedGradientEnd;
  final Color click;
  final Color grey;
  final Color greyLight;

  @override
  List<Object?> get props => [
        bgGradientStart.named('bgGradientStart'),
        bgGradientEnd.named('bgGradientEnd'),
        dark.named('dark'),
        bg2.named('bg2'),
        icons.named('icons'),
        white.named('white'),
        black.named('black'),
        btnGradientStart.named('btnGradientStart'),
        btnGradientEnd.named('btnGradientEnd'),
        btnHoveredGradientStart.named('btnHoveredGradientStart'),
        btnHoveredGradientEnd.named('btnHoveredGradientEnd'),
        btnPressedGradientStart.named('btnPressedGradientStart'),
        btnPressedGradientEnd.named('btnPressedGradientEnd'),
        click.named('click'),
        grey.named('grey'),
        greyLight.named('greyLight')
      ];
}
