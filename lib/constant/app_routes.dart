import 'package:flutter/material.dart';
import 'package:uber_app_ui_challenge/features/splash/splash_page.dart';

class AppRoutes {
  static final AppRoutes _appRoutes = AppRoutes();
  static AppRoutes get instance => _appRoutes;

  String splashPage = '/';

  Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const SplashScreen(),
  };
}
