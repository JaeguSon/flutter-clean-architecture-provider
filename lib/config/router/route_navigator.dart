import 'package:flutter/material.dart';
import 'package:flutter_ca_provider/config/router/route_name.dart';
import 'package:flutter_ca_provider/presentation/pages/splash_page.dart';

class RouteNavigator {
  static Map<String, WidgetBuilder> navigationMap = {
    RouteName.splash: (context) => const SplashPage(),
  };
}
