import 'dart:io';

import 'package:brain_monitor/app/common/services/enviroment_service.dart';
import 'package:brain_monitor/app/utils/interceptors/app_interceptors.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/state_manager.dart';

class ApiService extends GetxService {
  late Dio _dio;

  ApiService({required EnvironmentService environment}) {
    _dio = Dio(
      BaseOptions(
        followRedirects: false,
        /* validateStatus: (status) {
          return status! >= 500;
        }, */
        baseUrl: environment.baseUrl,
      ),
    );
    if (!kIsWeb) {
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
    }
  }
  void addInterceptors() {
    _dio.interceptors.add(
      AppInterceptors(_dio),
    );
  }

  Dio get dio => _dio;

  void addAuthHeader(String bearerToken) {
    _dio.options.headers.addAll({"Authorization": "Bearer $bearerToken"});
  }
}
