import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_app_ui_challenge/constant/app_routes.dart';
import 'package:uber_app_ui_challenge/features/drawer/cubits/drawer_cubit.dart';
import 'package:uber_app_ui_challenge/features/drawer/pages/your_tips_page.dart';
import 'package:uber_app_ui_challenge/features/home/cubits/home_cubit.dart';
import 'package:uber_app_ui_challenge/features/map/cubits/map_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
        BlocProvider(
          create: (context) => MapCubit(),
        ),
        BlocProvider(
          create: (context) => DrawerCubit(this),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const SplashScreen(),
        routes: AppRoutes.instance.routes,
        // initialRoute: AppRoutes.instance.splashPage,
        initialRoute: YourTipsScreen.yourTipsScreen,
      ),
    );
  }
}
