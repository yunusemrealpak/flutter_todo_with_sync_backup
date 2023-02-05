// ignore_for_file: prefer_constructors_over_static_methods

class ImageConstants {
  
  ImageConstants._init();
  static ImageConstants? _instance;

  static ImageConstants get instance => _instance ??= ImageConstants._init();

  String get logoLight => toPng('red_icon');
  String get logoDark => toPng('light_icon');

  String get loginLogoLight => toPng('logo');
  String get loginLogoDark => toPng('light_logo');
  
  String bigLogo(bool isDark){
    return isDark ? loginLogoDark : loginLogoLight;
  }

  String get sponsorLogo => toPng('sponsor');

  String get test => toPng('profile');

  String toPng(String name) => 'assets/logo/$name.png';
  String toSvg(String name) => 'assets/svgs/$name.svg';
}
