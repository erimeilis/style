import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';

import '../../../style.dart';

class AppCardProduct extends StatefulWidget {
  const AppCardProduct(
      {Key? key,
      required this.geo,
      required this.number,
      required this.features,
      required this.setupFeeTitle,
      required this.secondTitle,
      required this.setupFee,
      required this.monthlyFee,
      this.service,
      required this.cartIcon,
      required this.addToCart,
      required this.buy})
      : super(key: key);

  final String geo;
  final String number;
  final Map<IconData, bool> features;
  final String setupFeeTitle;
  final double setupFee;
  final String secondTitle;
  final double? monthlyFee;
  final String? service;
  final IconData cartIcon;
  final VoidCallback addToCart;
  final VoidCallback buy;

  @override
  _AppCardProductState createState() => _AppCardProductState();
}

class _AppCardProductState extends State<AppCardProduct> {
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    var secondString = (widget.monthlyFee != null) ? widget.monthlyFee!.toStringAsFixed(2) : widget.service;
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
                colors: [theme.colors.bgGradientStart, theme.colors.bgGradientEnd],
              )),
          alignment: Alignment.center,
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
            Center(
                child: Row(mainAxisSize: MainAxisSize.min, children: [
              Flag.fromString(widget.geo, height: 20, width: 33),
              const SizedBox(width: 10, height: 48),
              AppText.p18(widget.geo, color: theme.colors.grey),
            ])),
            Center(child: AppText.p24('+${widget.number}', fontWeight: FontWeight.w600, color: theme.colors.white)),
            Center(
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: widget.features.entries.map((f) {
                      return Padding(
                          padding: const AppEdgeInsets.small8().toEdgeInsets(theme),
                          child: AppIcon(f.key, color: f.value ? theme.colors.icons : theme.colors.click, size: AppIconSize.regular));
                    }).toList())),
            Row(mainAxisSize: MainAxisSize.max, children: [
              Expanded(
                  child: Column(children: [
                AppText.p18(
                  widget.setupFeeTitle,
                  fontSize: 14,
                ),
                AppText.p18(
                  widget.setupFee.toStringAsFixed(2),
                  fontWeight: FontWeight.w600,
                  color: theme.colors.white,
                  textAlign: TextAlign.center,
                )
              ])),
              Container(width: 1, height: 44, color: theme.colors.icons),
              Expanded(
                  child: Column(children: [
                AppText.p18(widget.secondTitle, fontSize: 14),
                AppText.p18(
                  secondString!,
                  fontSize: secondString.length > 12 ? 12 : 18,
                  fontWeight: FontWeight.w600,
                  color: theme.colors.white,
                  textAlign: TextAlign.center,
                )
              ]))
            ]),
            Row(mainAxisSize: MainAxisSize.max, children: [
              Expanded(
                child: AppIcon(widget.cartIcon, size: AppIconSize.big, onTap: widget.addToCart),
              ),
              Expanded(child: AppButton(title: 'Buy', onTap: widget.buy, width: 150, height: 45))
            ])
          ]),
        ));
  }
}
