class PngAssets {
  const PngAssets._();

  static String get icon => 'icon'.png;
}

extension on String {
  String get png => 'assets/icon/$this.png';
  // String get jpg => 'assets/icon/$this.jpg';
}
