import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_app_ui_challenge/features/auth/cubits/auth_state.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_code_widget.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_number_widget.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_payment_widget.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_policy_widget.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_social_widget.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialAuthState());

  int currentAuthIndex = 0;

  changeAuthIndex({required int nextIndex}) {
    currentAuthIndex = nextIndex;
    emit(UpdateAuthState());
  }

  Widget getAuthWidget() {
    switch (currentAuthIndex) {
      case 0:
        return const AuthNumberWidget();
      case 1:
        return const AuthSocialWidget();
      case 2:
        return const AuthCodeWidget();
      case 3:
        return const AuthNumberWidget();
      case 4:
        return const AuthPolicyWidget();
      case 5:
        return const AuthPaymentWidget();

      default:
        return const SizedBox();
    }
  }
}
