class AssetsFile {
  static const assetsPath = 'assets';
  static const lottiesPath = 'assets/lotties';
  static const imagePath = '$assetsPath/images';
  static const l10n = '$assetsPath/l10n';
  static const assets = 'assets';
  static String images(String image) => '$assets/images/$image';
  static String onBoarding(String image) => '$assets/images/on_boarding/$image';
  static String svg(String svg) => '$assets/svg/$svg';
  static String lottie(String svg) => '$assets/lotties/$svg';
  static String icon(String icon) => '$assets/icons/$icon';


}
