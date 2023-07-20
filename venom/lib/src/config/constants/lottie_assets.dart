class LottieAssets{
  const LottieAssets._();

  static String get dotLoading => 'dot_loading'.lottie;
}

extension on String {
  String get lottie => 'assets/lotties/$this.json';
}