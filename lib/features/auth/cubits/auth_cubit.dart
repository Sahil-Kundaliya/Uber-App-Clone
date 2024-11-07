import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_app_ui_challenge/features/auth/cubits/auth_state.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_code_widget.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_name_widget.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_number_widget.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_payment_widget.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_policy_widget.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/auth_social_widget.dart';

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
}
