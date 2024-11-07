import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/constant/app_images.dart';
import 'package:uber_app_ui_challenge/features/splash/cubits/splash_cubit.dart';
import 'package:uber_app_ui_challenge/features/splash/cubits/splash_state.dart';
import 'package:uber_app_ui_challenge/core/utils/ticker_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (_) => SplashCubit()..initializeAnimations(SingleTickerProviderImpl(context)),
      child: BlocBuilder<SplashCubit, SplashState>(
        builder: (context, state) {
          print('state is == ${state.toString()}');
          if (state is UpdateSplashState) {
            return SafeArea(
              child: Scaffold(
                body: Container(
                  height: size.height,
                  width: size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.primary1Colors,
                        AppColors.primary2Colors,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              // Arrows
                              Transform.translate(
                                offset: Offset(
                                    size.width * (1 - state.arrowsAnimation),
                                    0),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * 0.1),
                                  child: SizedBox(
                                    height: 181,
                                    width: 181,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child:
                                          Image.asset(AppImages.splashArrows),
                                    ),
                                  ),
                                ),
                              ),
                              // Uber container
                              Transform.scale(
                                scale: state.uberAnimation,
                                child: Center(
                                  child: Container(
                                    height: 181,
                                    width: 181,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: const LinearGradient(
                                          colors: [
                                            AppColors.primary1Colors,
                                            AppColors.primary2Colors,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              offset: const Offset(4, 4),
                                              blurRadius: 4,
                                              color: const Color(0xff000000)
                                                  .withOpacity(.25)),
                                          BoxShadow(
                                              offset: const Offset(-4, -4),
                                              blurRadius: 10,
                                              color: const Color(0xffBDBDBD)
                                                  .withOpacity(.40)),
                                        ]),
                                    child: Center(
                                      child: Text(
                                        'Uber',
                                        style: GoogleFonts.openSans(
                                            color: AppColors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 64),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Safety row
                          Transform.translate(
                            offset: Offset(
                                -size.width * (1 - state.safetyAnimation), 0),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Container(
                                height: 55,
                                width: size.width,
                                margin: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.15),
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.white),
                                    borderRadius: BorderRadius.circular(17)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Move with safety',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20)),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Icon(
                                        Icons.verified_user_outlined,
                                        size: 35,
                                        color: AppColors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Get started button
                      Positioned(
                        bottom: 40,
                        left: 0,
                        right: 0,
                        child: Transform.translate(
                          offset: Offset(
                              size.width * (1 - state.getStartedAnimation), 0),
                          child: Container(
                            height: 58,
                            width: size.width,
                            margin: EdgeInsets.symmetric(
                              horizontal: size.width * 0.1,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                  colors: [
                                    AppColors.primary1Colors,
                                    AppColors.primary2Colors
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(-4, 4),
                                    blurRadius: 4,
                                    color: const Color(0xff000000)
                                        .withOpacity(.25)),
                                BoxShadow(
                                    offset: const Offset(4, 4),
                                    blurRadius: 4,
                                    color: const Color(0xff000000)
                                        .withOpacity(.25)),
                              ],
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Get Started',
                                    style: TextStyle(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20)),
                                Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: Icon(
                                    Icons.arrow_forward_sharp,
                                    size: 35,
                                    color: AppColors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
