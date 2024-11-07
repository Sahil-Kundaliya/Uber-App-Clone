import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_app_ui_challenge/features/splash/cubits/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(InitialSplashState());

  late AnimationController _controller;
  late Animation<double> _uberContainerAnimation;
  late Animation<double> _arrowsAnimation;
  late Animation<double> _safetyRowAnimation;
  late Animation<double> _getStartedAnimation;

  void initializeAnimations(TickerProvider vsync) {
    _controller = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 4000),
    );

    _uberContainerAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.25, 0.5, curve: Curves.easeInOut),
      ),
    );

    _arrowsAnimation = Tween<double>(begin: -1.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 0.75, curve: Curves.easeInOut),
      ),
    );

    _safetyRowAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.75, 0.875, curve: Curves.easeInOut),
      ),
    );

    _getStartedAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.875, 1.0, curve: Curves.easeInOut),
      ),
    );

    // Listen to animation updates and emit new states
    _controller.addListener(() {
      emit(UpdateSplashState(
        uberAnimation: _uberContainerAnimation.value,
        arrowsAnimation: _arrowsAnimation.value,
        safetyAnimation: _safetyRowAnimation.value,
        getStartedAnimation: _getStartedAnimation.value,
      ));
    });

    // Start animations after 1 second delay
    Future.delayed(const Duration(seconds: 1), () {
      _controller.forward();
    });
  }

  @override
  Future<void> close() {
    _controller.dispose();
    return super.close();
  }
}
