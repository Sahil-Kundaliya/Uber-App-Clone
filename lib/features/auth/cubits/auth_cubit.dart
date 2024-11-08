import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/features/auth/cubits/auth_state.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_code_widget.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_name_widget.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_number_widget.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_payment_widget.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_policy_widget.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_social_widget.dart';
import 'package:uber_app_ui_challenge/features/home/pages/home_page.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialAuthState());

  int currentAuthIndex = 0;

  changeAuthIndex({int? nextIndex}) {
    if (nextIndex != null) {
      currentAuthIndex = nextIndex;
    } else {
      switch (currentAuthIndex) {
        case 0:
          currentAuthIndex = 2;
        case 1:
          currentAuthIndex = 3;
        case 2:
          currentAuthIndex = 3;
        case 3:
          currentAuthIndex = 4;
        case 4:
          currentAuthIndex = 5;
      }
    }
    emit(UpdateAuthState());
  }

  authBackButton({required BuildContext context}) {
    switch (currentAuthIndex) {
      case 0:
        Navigator.pop(context);
      case 1:
        currentAuthIndex = 0;
      case 2:
        currentAuthIndex = 0;
      case 3:
        currentAuthIndex = 0;
      case 4:
        currentAuthIndex = 3;
    }
    emit(UpdateAuthState());
  }

  Widget getAuthWidget() {
    switch (currentAuthIndex) {
      case 0:
        return AuthNumberWidget();
      case 1:
        return const AuthSocialWidget();
      case 2:
        return const AuthCodeWidget();
      case 3:
        return const AuthNameWidget();
      case 4:
        return const AuthPolicyWidget();
      case 5:
        return const AuthPaymentWidget();

      default:
        return const SizedBox();
    }
  }

  openBottomSheet({required BuildContext context}) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Color(0xff1D1D1D),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only()),
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
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(context, HomeScreen.homeScreen, (route) => false,);
                  },
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
                onTap: () {
                  Navigator.pop(context);
                },
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

}
