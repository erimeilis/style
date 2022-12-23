import 'package:flutter/material.dart';

import '../../../style.dart';

class AppCardProduct extends StatelessWidget {
  const AppCardProduct(
      {Key? key,
      this.country,
      required this.number,
      required this.features,
      required this.setupFee,
      this.monthlyFeeOrService,
      required this.inCart,
      required this.addToCart,
      required this.buy})
      : super(key: key);

  final String? country;
  final String number;
  final List<Map<Icon, bool>> features;
  final double setupFee;
  final String? monthlyFeeOrService;
  final bool inCart;
  final VoidCallback addToCart;
  final VoidCallback buy;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppContainer(
      padding: const AppEdgeInsets.regular18(),
      margin: const AppEdgeInsets.regular18(),
      decoration: BoxDecoration(
          borderRadius: theme.radius.asBorderRadius().regular,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [theme.colors.bgGradientStart, theme.colors.bgGradientEnd],
          )),
      alignment: Alignment.center,
      child: Column(children: [
        AppText.title2(number),
        Row(children: [
          GestureDetector(
            onTap: addToCart,
            child: AppAnimatedIcon(Icons.shopping_cart, color: theme.colors.click, size: AppIconSize.regular),
          ),
          AppButton(title: 'buy', onTap: buy)
        ])
      ]),
    );
  }
}
