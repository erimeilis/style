import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:style/src/theme/data/form_factor.dart';
import 'package:style/style.dart';

class AppScaffold extends StatefulWidget {
  @override
  _AppScaffoldState createState() => _AppScaffoldState();

  const AppScaffold({
    Key? key,
    required this.body,
    this.appBar,
    required this.drawer,
    this.topBar,
  }) : super(key: key);

  final Widget body;
  final Widget? appBar;
  final Widget drawer;
  final Widget? topBar;
}

class _AppScaffoldState extends State<AppScaffold> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation = IntTween(begin: 100, end: 0).animate(_animationController);
    _animation.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final formFactor = theme.formFactor;
    final drawer = widget.drawer;
    final topBar = widget.topBar ?? Container();

    if (formFactor == AppFormFactor.medium || formFactor == AppFormFactor.small) {
      return DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [theme.colors.bgGradientStart, theme.colors.bgGradientEnd], begin: Alignment.topRight),
          ),
          child: Scaffold(
              appBar: AppBar(title: topBar, backgroundColor: theme.colors.bg2),
              backgroundColor: Colors.transparent,
              drawer: AppContainer(
                  width: (formFactor == AppFormFactor.medium) ? MediaQuery.of(context).size.width * 0.4 : MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(color: theme.colors.bg2),
                  child: drawer),
              extendBody: true,
              body: widget.body));
    } else {
      return DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [theme.colors.bgGradientStart, theme.colors.bgGradientEnd], begin: Alignment.topRight),
          ),
          child: Scaffold(
              appBar:
                  AppBar(title: Row(children: [Expanded(flex: 1, child: Container()), Expanded(flex: 3, child: topBar)]), backgroundColor: theme.colors.bg2),
              backgroundColor: Colors.transparent,
              body: Row(children: [
                Expanded(flex: 1, child: AppContainer(decoration: BoxDecoration(color: theme.colors.bg2), child: drawer)),
                Expanded(flex: 3, child: widget.body)
              ])));
    }
  }
}
