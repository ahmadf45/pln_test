import 'package:pln_test/infrastructures/misc/pages.dart';
import 'package:pln_test/ui/pages/home/view.dart';
import 'package:flutter/material.dart';
import 'package:pln_test/ui/pages/splash/view.dart';
import 'package:pln_test/ui/pages/todo/view.dart';

/// To create router for every single page
class Router {
  Router() {
    routeObserver = RouteObserver<PageRoute>();
  }

  late RouteObserver<PageRoute> routeObserver;

  Route<dynamic>? getRoute(RouteSettings? settings) {
    switch (settings?.name) {
      case Pages.home:
        return _buildRoute(settings, const HomePage());
      case Pages.splash:
        return _buildRoute(settings, const SplashPage());
      case Pages.addTodo:
        return _buildRoute(settings, const TodoPage());

      default:
        return null;
    }
  }

  MaterialPageRoute _buildRoute(RouteSettings? settings, Widget builder) {
    return MaterialPageRoute(
      settings: settings,
      builder: (ctx) => builder,
    );
  }
}
