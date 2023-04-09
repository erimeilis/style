import 'package:flutter/material.dart';

import '../../../../../style.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key, required this.tabController});

  final TabController tabController;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);
    final theme = AppTheme.of(context);

    final captions = [localizations.dateRangeStartLabel, localizations.dateRangeEndLabel];
    return ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 350,
          maxHeight: 40,
        ),
        child: TabBar(
            controller: widget.tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1.0, color: theme.colors.icons),
              ),
            ),
            tabs: [
              Tab(
                child: Align(alignment: Alignment.center, child: AppText.p18(captions[0], color: theme.colors.white)),
              ),
              Tab(
                child: Align(alignment: Alignment.center, child: AppText.p18(captions[1], color: theme.colors.white)),
              )
            ]));
  }
}
