abstract class SplashState {
  const SplashState();
}

class InitialSplashState extends SplashState {}

class UpdateSplashState extends SplashState {
  final double uberAnimation;
  final double arrowsAnimation;
  final double safetyAnimation;
  final double getStartedAnimation;

  const UpdateSplashState({
    required this.uberAnimation,
    required this.arrowsAnimation,
    required this.safetyAnimation,
    required this.getStartedAnimation,
  });
}
