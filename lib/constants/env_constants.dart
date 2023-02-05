

import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvConstants {
  apiUrl('API_URL'),
  devApiUrl('DEV_API_URL'),
  facebookAppId('FACEBOOK_APP_ID'),
  rcAndroid('RC_ANDROID'),
  rciOS('RC_IOS'),
  onesignalAppId('ONESIGNAL_APP_ID'),
  deeplinkUrl('DL_URL');

  const EnvConstants(this.value);
  final String value;

  String get getValue => dotenv.get(value);
}