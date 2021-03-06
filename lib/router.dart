import 'package:flutter/material.dart';
import 'package:sharksw_aleksey_test/screens/app_browser/app_browser.dart';
import 'package:sharksw_aleksey_test/screens/egestas/egestas_screen.dart';
import 'package:sharksw_aleksey_test/screens/fringilla/fringilla_screen.dart';
import 'package:sharksw_aleksey_test/screens/main_screen/main_screen.dart';

/// This is a class for generating and easy use named routes
class AppRouter {
  ///  This is a static private method to implement the same routing animation on both platform.
  ///  transitionDuration is a parameter to setup the speed of the animation routing to another screen.
  ///  reverseTransitionDuration is a parameter to setup the speed of routing back to previous screen.
  static PageRouteBuilder _routeBuilder(Widget widget, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      transitionDuration: Duration(microseconds: 300),
      reverseTransitionDuration: Duration(microseconds: 300),
      pageBuilder: (_, __, ___) => widget,
      transitionsBuilder: (_, anim, __, child) {
        return FadeTransition(
          opacity: anim,
          child: child,
        );
      },
    );
  }

  /// Method for generating routes.
  /// Every screen should include static constant 'routeName' containing string with route path.
  /// To add here a new route, add a case with Screen.routeName and transfer the screen's widget to a _routeBuilder and settings to transfer parameters to a widget
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainScreen.routeName:
        return _routeBuilder(MainScreen(), settings);

      case EgestasScreen.routeName:
        return _routeBuilder(EgestasScreen(), settings);

      case FringillaScreen.routeName:
        return _routeBuilder(FringillaScreen(), settings);

      case AppBrowser.routeName:
        {
          dynamic data = settings.arguments;
          return _routeBuilder(AppBrowser(url: data), settings);
        }
      default:
        return _routeBuilder(MainScreen(), settings);
    }
  }
}
