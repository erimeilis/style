import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';

import '../../../style.dart';

class AppCardNumber extends StatefulWidget {
  const AppCardNumber({
    Key? key,
    this.colors,
    required this.name,
    required this.geo,
    required this.number,
    required this.featuresString,
    required this.datesString,
    required this.feesString,
    this.secondString,
  }) : super(key: key);

  final List<Color>? colors;
  final String name;
  final String geo;
  final String number;
  final String featuresString;
  final Widget datesString;
  final Widget feesString;
  final Widget? secondString;

  @override
  _AppCardNumberState createState() => _AppCardNumberState();
}

class _AppCardNumberState extends State<AppCardNumber> {
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 400, minHeight: 270),
        child: AppContainer(
          padding: const AppEdgeInsets.regular18(),
          margin: const AppEdgeInsets.small8(),
          decoration: BoxDecoration(
              borderRadius: theme.radius.asBorderRadius().regular,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: widget.colors ?? [theme.colors.bgGradientStart, theme.colors.bgGradientEnd],
              )),
          alignment: Alignment.center,
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
            Center(child: AppText.p18(widget.name, color: theme.colors.white)),
            Center(child: AppText.p18(widget.geo, color: theme.colors.grey, fontSize: 16)),
            Center(
                child: Row(mainAxisSize: MainAxisSize.min, children: [
              Flag.fromString(widget.geo, height: 20, width: 33),
              const SizedBox(width: 10, height: 48),
              AppText.p24('+${widget.number}', fontWeight: FontWeight.w600, color: theme.colors.white),
            ])),
            Center(child: AppText.p18(widget.featuresString, color: theme.colors.grey, fontSize: 16)),
            Center(child: widget.datesString),
            Center(child: widget.feesString),
            Center(child: widget.secondString ?? Container()),
          ]),
        ));
  }
}
