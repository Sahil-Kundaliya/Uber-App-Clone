import 'package:flutter/material.dart';
import 'package:uber_app_ui_challenge/constant/app_routes.dart';
import 'package:uber_app_ui_challenge/features/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const SplashScreen(),
      routes: AppRoutes.instance.routes,
      initialRoute: AppRoutes.instance.splashPage,
    );
  }
}
