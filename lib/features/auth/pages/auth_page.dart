import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/features/auth/cubits/auth_cubit.dart';
import 'package:uber_app_ui_challenge/features/auth/cubits/auth_state.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  static const String authScreen = '/AuthScreen';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
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
                    SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: AppColors.iconColors,
                        ),
                      ],
                    ),
                    Expanded(
                      child: authCubit.getAuthWidget(),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                      child: GestureDetector(
                        onTap: () {
                          authCubit.changeAuthIndex(nextIndex: 1);
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
