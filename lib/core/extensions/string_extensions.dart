// ignore_for_file: prefer_single_quotes

import 'package:flutter/foundation.dart';

extension StringExtensions on String {
  String get ifDebugEmail => kDebugMode ? 'test@test.com' : '';
  String get ifDebugPassword => kDebugMode ? '123456' : '';

  String get toSvg => 'assets/svgs/$this.svg';
  String get toPngIcons => 'assets/icon/$this.png';
  String get toPngImages => 'assets/images/$this.png';

  String checkLength(int value) {
    if (length > value) {
      return '${substring(0, value)}...';
    } else {
      return this;
    }
  }

  String get capitalize => "${this[0].toUpperCase()}${substring(1)}";

  String toCamelCase() {
    return split('_')
        .map(
          (e) => "${e[0].toUpperCase()}${e.substring(1)}",
        )
        .join();
  }

  bool get isValidEmail => RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
      ).hasMatch(this);
}
