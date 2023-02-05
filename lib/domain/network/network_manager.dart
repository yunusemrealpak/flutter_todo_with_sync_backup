import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../constants/env_constants.dart';
import 'core_dio.dart';
import 'i_core_dio.dart';

@singleton
class NetworkManager {
  NetworkManager() {
    final baseOptions = BaseOptions(
      baseUrl: EnvConstants.apiUrl.getValue,
      validateStatus: (status) {
        if (status == null) return false;
        return status < 500;
      },
    );

    coreDio = CoreDio(baseOptions);
  }

  late ICoreDio coreDio;

  void addHeader(Map<String, dynamic> value) {
    coreDio.addHeader(value);
  }

  void addAuthorizationHeader(String token) {
    coreDio.addAuthorizationHeader(token);
  }

  void removeHeader(String key) {
    coreDio.removeHeader(key);
  }

  void removeAuthorizationHeader() {
    coreDio.removeAuthorizationHeader();
  }
}
