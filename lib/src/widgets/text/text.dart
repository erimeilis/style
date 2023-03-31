import 'package:flutter/widgets.dart';
import 'package:style/src/theme/theme.dart';

enum AppTextLevel {
  button,
  p18,
  p20,
  p24,
  paragraph2,
  t36,
  title2,
  title3,
}

extension RegExpExtension on RegExp {
  List<String> allMatchesWithSep(String input, [int start = 0]) {
    var result = <String>[];
    for (var match in allMatches(input, start)) {
      result.add(input.substring(start, match.start));
      result.add(match[0]!);
      start = match.end;
    }
    result.add(input.substring(start));
    return result;
  }
}

extension StringExtension on String {
  List<String> splitWithDelim(RegExp pattern) => pattern.allMatchesWithSep(this);
}

class AppText extends StatelessWidget {
  const AppText(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textAlign,
    this.fontWeight,
    this.replace,
    this.underline = false,
    this.level = AppTextLevel.p24,
  }) : super(key: key);

  const AppText.button(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textAlign,
    this.fontWeight,
    this.replace,
    this.underline = false,
  })  : level = AppTextLevel.button,
        super(key: key);

  const AppText.p18(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textAlign,
    this.fontWeight,
    this.replace,
    this.underline = false,
  })  : level = AppTextLevel.p18,
        super(key: key);

  const AppText.p20(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textAlign,
    this.fontWeight,
    this.replace,
    this.underline = false,
  })  : level = AppTextLevel.p20,
        super(key: key);

  const AppText.p24(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textAlign,
    this.fontWeight,
    this.replace,
    this.underline = false,
  })  : level = AppTextLevel.p24,
        super(key: key);

  const AppText.paragraph2(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textAlign,
    this.fontWeight,
    this.replace,
    this.underline = false,
  })  : level = AppTextLevel.paragraph2,
        super(key: key);

  const AppText.t36(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textAlign,
    this.fontWeight,
    this.replace,
    this.underline = false,
  })  : level = AppTextLevel.t36,
        super(key: key);

  const AppText.title2(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textAlign,
    this.fontWeight,
    this.replace,
    this.underline = false,
  })  : level = AppTextLevel.title2,
        super(key: key);

  const AppText.title3(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textAlign,
    this.fontWeight,
    this.replace,
    this.underline = false,
  })  : level = AppTextLevel.title3,
        super(key: key);

  final String data;
  final AppTextLevel level;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextAlign? textAlign;
  final bool underline;
  final List<InlineSpan>? replace;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final color = this.color ?? theme.colors.grey;
    final style = () {
      switch (level) {
        case AppTextLevel.button:
          return theme.typography.button;
        case AppTextLevel.p18:
          return theme.typography.p18;
        case AppTextLevel.p20:
          return theme.typography.p20;
        case AppTextLevel.p24:
          return theme.typography.p24;
        case AppTextLevel.paragraph2:
          return theme.typography.paragraph2;
        case AppTextLevel.t36:
          return theme.typography.t36;
        case AppTextLevel.title2:
          return theme.typography.title2;
        case AppTextLevel.title3:
          return theme.typography.title3;
      }
    }();
    final textAlign = this.textAlign;
    final List<InlineSpan> r = replace ?? [];
    final decoration = underline ? TextDecoration.underline : null;
    if (r.isNotEmpty) {
      return Container(
          margin: EdgeInsets.fromLTRB(0, underline ? 10 : 0, 0, 0),
          child: RichText(
            text: TextSpan(
                style: style.copyWith(
                    shadows: underline ? [Shadow(color: color, offset: const Offset(0, -5))] : null,
                    color: color.withOpacity(underline ? 0 : 1),
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    decoration: decoration,
                    decorationColor: theme.colors.click,
                    decorationThickness: 2),
                children: data
                    .splitWithDelim(RegExp(r'#\d'))
                    .map((e) => RegExp(r'#\d').hasMatch(e)
                        ? r.asMap().containsKey(int.parse(e.substring(1)))
                            ? r[int.parse(e.substring(1))]
                            : const TextSpan()
                        : TextSpan(text: e))
                    .toList()),
            textAlign: textAlign ?? TextAlign.center,
          ));
    }
    return Container(
        margin: EdgeInsets.fromLTRB(0, underline ? 10 : 0, 0, 0),
        child: Text(data,
            style: style.copyWith(
                shadows: underline ? [Shadow(color: color, offset: const Offset(0, -5))] : null,
                color: color.withOpacity(underline ? 0 : 1),
                fontSize: fontSize,
                fontWeight: fontWeight,
                decoration: decoration,
                decorationColor: theme.colors.click,
                decorationThickness: 2),
            maxLines: maxLines,
            textAlign: textAlign));
  }
}
