import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_app_ui_challenge/constant/app_routes.dart';
import 'package:uber_app_ui_challenge/features/home/cubits/home_cubit.dart';
import 'package:uber_app_ui_challenge/features/home/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const SplashScreen(),
        routes: AppRoutes.instance.routes,
        // initialRoute: AppRoutes.instance.splashPage,
        initialRoute: HomeScreen.homeScreen,
      ),
    );
  }
}
