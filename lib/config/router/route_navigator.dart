import 'package:flutter/material.dart';
import 'package:flutter_ca_provider/config/router/route_name.dart';
import 'package:flutter_ca_provider/presentation/pages/splash_page.dart';

class RouteNavigator {
  static Map<String, WidgetBuilder> navigationMap = {
    RouteName.splash: (context) => const SplashPage(),
  };

  RouteNavigator._privateConstructor();
  static final RouteNavigator _instance = RouteNavigator._privateConstructor();

  factory RouteNavigator() {
    return _instance;
  }

  _getPageFrom({required String name}) {
    final route = navigationMap[name];

    if (route == null) {
      return const SplashPage();
    }

    return route;
  }

  toPageAndRoot(BuildContext context, {required String to}) {
    Navigator.pushAndRemoveUntil(
      context,
      PageRouteBuilder(pageBuilder: (_, __, ___) => _getPageFrom(name: to)),
      (route) => false,
    );
  }

  toPage(BuildContext context, {required String to}) {
    Navigator.push(
      context,
      PageRouteBuilder(pageBuilder: (_, __, ___) => _getPageFrom(name: to)),
    );
  }

  toPrevious(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
      return;
    }
  }
}
