import 'package:dio/dio.dart';

import '../../core/enums/http_types.dart';
import 'response_model.dart';

abstract class ICoreDio {
  void addHeader(Map<String, dynamic> value);
  void addAuthorizationHeader(String token);
  void removeHeader(String key);
  void removeAuthorizationHeader();

  void addInterceptor(Interceptor interceptor);

  Future<ResponseModel> send(
    String path, {
    required HttpTypes type,
    dynamic data,
    Map<String, dynamic>? queryParameters,
  });
}
