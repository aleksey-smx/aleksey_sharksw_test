import 'package:flutter/material.dart';
import 'package:sharksw_aleksey_test/screens/app_browser/app_browser.dart';
import 'package:sharksw_aleksey_test/screens/egestas/egestas_screen.dart';
import 'package:sharksw_aleksey_test/screens/fringilla/fringilla_screen.dart';
import 'package:sharksw_aleksey_test/screens/main_screen/main_screen.dart';

class AppRouter {
  static PageRouteBuilder _routeBuilder(Widget widget, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      transitionDuration: Duration(microseconds: 300),
      reverseTransitionDuration: Duration(microseconds: 300),
      pageBuilder: (
        _,
        __,
        ___,
      ) =>
          widget,
      transitionsBuilder: (_, anim, __, child) {
        return FadeTransition(
          opacity: anim,
          child: child,
        );
      },
    );
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    dynamic data = settings.arguments;
    switch (settings.name) {
      case MainScreen.routeName:
        {
          return _routeBuilder(MainScreen(), settings);
        }
      case EgestasScreen.routeName:
        {
          return _routeBuilder(EgestasScreen(), settings);
        }
      case FringillaScreen.routeName:
        {
          return _routeBuilder(FringillaScreen(), settings);
        }
      case AppBrowser.routeName:
        {
          return _routeBuilder(AppBrowser(url: data), settings);
        }
      default:
        return _routeBuilder(MainScreen(), settings);
    }
  }
}
