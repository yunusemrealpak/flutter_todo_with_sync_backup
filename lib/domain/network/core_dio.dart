import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_proxy_plugin/dio_proxy_plugin.dart';
import 'package:flutter/services.dart';

import '../../core/enums/http_types.dart';
import 'i_core_dio.dart';
import 'response_model.dart';

class CoreDio with DioMixin implements Dio, ICoreDio {
  CoreDio(BaseOptions options) {
    this.options = options;
    _setDeviceProxy();
  }

  Future<void> _setDeviceProxy() async {
    var deviceProxy = '';
    try {
      deviceProxy = await DioProxyPlugin.deviceProxy;
    } on PlatformException {
      deviceProxy = '';
    }
    if (deviceProxy.isNotEmpty) {
      final arrProxy = deviceProxy.split(':');

      final httpProxyAdapter = HttpProxyAdapter(
        ipAddr: arrProxy[0],
        port: int.tryParse(arrProxy[1])!,
      );
      httpClientAdapter = httpProxyAdapter;
    } else {
      httpClientAdapter = DefaultHttpClientAdapter();
    }
  }

  @override
  Future<ResponseModel> send(
    String path, {
    required HttpTypes type,
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await request<dynamic>(
        path,
        data: data,
        options: Options(
          method: type.rawValue,
        ),
        queryParameters: queryParameters,
      );
      switch (response.statusCode) {
        case HttpStatus.ok:
        case HttpStatus.accepted:
          return ResponseModel(data: response.data, statusCode: 1);
        default:
          return ResponseModel(
            statusCode: response.statusCode,
            data: response.data['error'],
          );
      }
    } catch (e) {
      return ResponseModel(
        statusCode: -1,
        data: {'message': 'Beklenmedik bir hata oluştu'},
      );
    }
  }

  @override
  void addHeader(Map<String, dynamic> value) {
    options.headers.addAll(value);
  }

  @override
  void addAuthorizationHeader(String token) {
    options.headers.addAll({'Authorization': 'Bearer $token'});
  }

  @override
  void removeHeader(String key) {
    options.headers.remove(key);
  }

  @override
  void removeAuthorizationHeader() {
    options.headers.remove('Authorization');
  }

  @override
  void addInterceptor(Interceptor interceptor) {
    interceptors.add(interceptor);
  }
}
