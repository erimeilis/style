import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart' as material;
import 'package:flutter/services.dart';
import 'package:style/style.dart';

class AppBase extends StatelessWidget {
  const AppBase({
    Key? key,
    required this.routerConfig,
    //required this.routerDelegate,
    //required this.routeInformationParser,
    //this.routeInformationProvider,
    this.backButtonDispatcher,
    this.debugShowGrid = false,
    this.title = '',
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.useInheritedMediaQuery = false,
    this.debugShowCheckedModeBanner = true,
    this.showSemanticsDebugger = false,
    this.checkerboardOffscreenLayers = false,
    this.checkerboardRasterCacheImages = false,
    this.showPerformanceOverlay = false,
    this.onGenerateTitle,
    this.shortcuts,
    this.actions,
    this.builder,
    this.locale,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.localizationsDelegates,
    this.restorationScopeId,
    this.colorMode,
  }) : super(key: key);

  final AppThemeColorMode? colorMode;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final bool useInheritedMediaQuery;
  final bool debugShowGrid;
  final bool debugShowCheckedModeBanner;
  //final RouteInformationProvider? routeInformationProvider;
  //final RouteInformationParser<Object> routeInformationParser;
  final Map<ShortcutActivator, Intent>? shortcuts;
  final List<Locale> supportedLocales;
  final String title;
  final String Function(BuildContext)? onGenerateTitle;
  final BackButtonDispatcher? backButtonDispatcher;
  //final RouterDelegate<Object> routerDelegate;
  final RouterConfig<Object> routerConfig;
  final Map<Type, Action<Intent>>? actions;
  final String? restorationScopeId;
  final bool showSemanticsDebugger;
  final bool checkerboardOffscreenLayers;
  final bool checkerboardRasterCacheImages;
  final Locale? Function(Locale?, Iterable<Locale>)? localeResolutionCallback;
  final Locale? Function(List<Locale>?, Iterable<Locale>)? localeListResolutionCallback;
  final bool showPerformanceOverlay;
  final Locale? locale;
  final TransitionBuilder? builder;

  // We provide material and cupertino localization delegate even it will
  // probably not be used.
  Iterable<LocalizationsDelegate<dynamic>> get _localizationsDelegates sync* {
    if (localizationsDelegates != null) yield* localizationsDelegates!;
    yield material.DefaultMaterialLocalizations.delegate;
    yield cupertino.DefaultCupertinoLocalizations.delegate;
  }

  Widget _inspectorSelectButtonBuilder(BuildContext context, VoidCallback onPressed) {
    final theme = AppTheme.of(context);
    return AppButton(
      title: title,
      onTap: onPressed,
    );
  }

  Widget _appBuilder(BuildContext context, Widget? child) {
    return builder != null ? builder!(context, child) : child ?? const SizedBox.shrink();
  }

  Widget _buildWidgetApp(BuildContext context) {
    Widget result = AppResponsiveTheme(
      colorMode: colorMode,
      child: material.Builder(builder: (context) {
        final theme = AppTheme.of(context);
        return WidgetsApp.router(
          key: GlobalObjectKey(this),
          //routeInformationProvider: routeInformationProvider,
          //routeInformationParser: routeInformationParser,
          //routerDelegate: routerDelegate,
          routerConfig: routerConfig,
          backButtonDispatcher: backButtonDispatcher,
          builder: _appBuilder,
          title: title,
          onGenerateTitle: onGenerateTitle,
          textStyle: theme.typography.p24.copyWith(
            color: theme.colors.grey,
          ),
          color: theme.colors.click,
          locale: locale,
          localizationsDelegates: _localizationsDelegates,
          localeResolutionCallback: localeResolutionCallback,
          localeListResolutionCallback: localeListResolutionCallback,
          supportedLocales: supportedLocales,
          showPerformanceOverlay: showPerformanceOverlay,
          checkerboardRasterCacheImages: checkerboardRasterCacheImages,
          checkerboardOffscreenLayers: checkerboardOffscreenLayers,
          showSemanticsDebugger: showSemanticsDebugger,
          debugShowCheckedModeBanner: debugShowCheckedModeBanner,
          inspectorSelectButtonBuilder: _inspectorSelectButtonBuilder,
          shortcuts: shortcuts,
          actions: actions,
          restorationScopeId: restorationScopeId,
          useInheritedMediaQuery: useInheritedMediaQuery,
        );
      }),
    );

    if (!useInheritedMediaQuery) {
      result = MediaQuery.fromWindow(
        child: result,
      );
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    Widget result = _buildWidgetApp(context);
    result = Focus(
      canRequestFocus: false,
      onKey: (FocusNode node, RawKeyEvent event) {
        if (event is! RawKeyDownEvent || event.logicalKey != LogicalKeyboardKey.escape) {
          return KeyEventResult.ignored;
        }
        return KeyEventResult.ignored;
      },
      child: result,
    );
    assert(() {
      if (debugShowGrid) {
        result = GridPaper(
          color: const Color(0xE0F9BBE0),
          interval: 8.0,
          subdivisions: 1,
          child: result,
        );
      }
      return true;
    }());

    return result;
  }
}
