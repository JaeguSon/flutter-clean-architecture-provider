import 'package:flutter/material.dart';
import 'package:flutter_ca_provider/config/router/route_navigator.dart';
import 'package:flutter_ca_provider/config/theme/application_theme.dart';
import 'package:flutter_ca_provider/presentation/pages/splash_page.dart';
import 'package:flutter_ca_provider/presentation/providers/user_state_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        Provider<UserStateProvider>(create: (context) => UserStateProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clean Archtecture',
      theme: applicaitionTheme(),
      home: const SplashPage(),
      routes: RouteNavigator.navigationMap,
    );
  }
}
