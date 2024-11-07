import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/features/auth/cubits/auth_cubit.dart';
import 'package:uber_app_ui_challenge/features/auth/cubits/auth_state.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  static const String authScreen = '/AuthScreen';

  openBottomSheet({required BuildContext context}) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Color(0xff1D1D1D),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'You won’t be able to request a ride without adding a payment method',
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 20),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 58,
                    width: double.infinity,
                    decoration:
                        const BoxDecoration(color: AppColors.customBlackColors),
                    child: Center(
                      child: Text(
                        'Add Payment Method Now',
                        style: GoogleFonts.roboto(
                            color: const Color(0xffEDF6FF),
                            fontSize: 21.6,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 58,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.transparent,
                      border: Border.all(color: Color(0xffEDF6FF))),
                  child: Center(
                    child: Text(
                      'Do it Later',
                      style: GoogleFonts.roboto(
                          color: const Color(0xffEDF6FF),
                          fontSize: 21.6,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: BlocProvider(
        create: (context) => AuthCubit(),
        child: BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
          AuthCubit authCubit = context.read<AuthCubit>();
          return Scaffold(
            body: Container(
              height: size.height,
              width: size.width,
              decoration:
                  const BoxDecoration(color: AppColors.backgroundColors),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    if (authCubit.currentAuthIndex != 5)
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            authCubit.authBackButton(context: context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: AppColors.iconColors,
                          ),
                        ),
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: authCubit.getAuthWidget(),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                      child: GestureDetector(
                        onTap: () {
                          if (authCubit.currentAuthIndex == 5) {
                            openBottomSheet(context: context);
                          } else {
                            authCubit.changeAuthIndex();
                          }
                        },
                        child: Container(
                          height: 58,
                          width: size.width,
                          decoration: const BoxDecoration(
                              color: AppColors.customBlackColors),
                          child: Center(
                            child: Text(
                              'Next',
                              style: GoogleFonts.roboto(
                                  color: const Color(0xffEDF6FF),
                                  fontSize: 21.6,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
