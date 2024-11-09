import 'package:flutter/material.dart';
import 'package:uber_app_ui_challenge/features/auth/pages/auth_page.dart';
import 'package:uber_app_ui_challenge/features/home/pages/confirm_package_page.dart';
import 'package:uber_app_ui_challenge/features/home/pages/home_page.dart';
import 'package:uber_app_ui_challenge/features/home/pages/select_package_page.dart';
import 'package:uber_app_ui_challenge/features/map/pages/confirm_payment_page.dart';
import 'package:uber_app_ui_challenge/features/map/pages/map_page.dart';
import 'package:uber_app_ui_challenge/features/map/pages/thank_you_page.dart';
import 'package:uber_app_ui_challenge/features/splash/pages/splash_page.dart';

class AppRoutes {
  static final AppRoutes _appRoutes = AppRoutes();

  static AppRoutes get instance => _appRoutes;

  String splashPage = '/';

  Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const SplashScreen(),
    AuthScreen.authScreen: (context) => const AuthScreen(),

    //home

    HomeScreen.homeScreen: (context) => const HomeScreen(),
    ConfirmPackageScreen.confirmPackageScreen: (context) =>
        ConfirmPackageScreen(),
    SelectPackageScreen.selectPackageScreen: (context) =>
        const SelectPackageScreen(),

    //map
    MapScreen.mapScreen: (context) => const MapScreen(),
    ConfirmPaymentScreen.confirmPaymentScreen: (context) =>
        const ConfirmPaymentScreen(),
    ThankYouScreen.thankYouScreen: (context) => const ThankYouScreen(),
  };
}
