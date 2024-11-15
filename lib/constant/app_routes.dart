import 'package:flutter/material.dart';
import 'package:uber_app_ui_challenge/features/auth/pages/auth_page.dart';
import 'package:uber_app_ui_challenge/features/drawer/pages/account_page.dart';
import 'package:uber_app_ui_challenge/features/drawer/pages/messages_page.dart';
import 'package:uber_app_ui_challenge/features/drawer/pages/payment_page.dart';
import 'package:uber_app_ui_challenge/features/drawer/pages/uber_pass_page.dart';
import 'package:uber_app_ui_challenge/features/drawer/pages/your_tips_page.dart';
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

    //drawer
    AccountScreen.accountScreen: (context) => const AccountScreen(),
    YourTipsScreen.yourTipsScreen: (context) => const YourTipsScreen(),
    MessagesScreen.messagesScreen: (context) => const MessagesScreen(),
    UberPassScreen.uberPassScreen: (context) => const UberPassScreen(),
    PaymentScreen.paymentScreen: (context) => const PaymentScreen(),
  };
}
