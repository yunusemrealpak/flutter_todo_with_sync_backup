import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvConstants {
  apiUrl('API_URL');

  const EnvConstants(this.value);
  final String value;

  String get getValue => dotenv.get(value);
}
