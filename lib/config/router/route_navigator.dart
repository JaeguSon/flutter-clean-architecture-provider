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

  toPageAndRoot(BuildContext context, {required String to}) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      to,
      (route) => false,
    );
  }

  toPage(BuildContext context, {required String to}) {
    Navigator.pushNamed(
      context,
      to,
    );
  }

  toPrevious(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
      return;
    }
  }
}
