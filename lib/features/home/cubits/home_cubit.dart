import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_app_ui_challenge/features/home/cubits/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitialHomeState());

  bool isSending = true;

  changeSendValue({required bool value}) {
    isSending = value;
    print('SSS');
    emit(UpdateHomeState());
  }
}
