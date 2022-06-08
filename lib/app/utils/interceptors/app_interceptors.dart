import 'package:brain_monitor/app/utils/functions/custom_logger.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

class AppInterceptors extends Interceptor {
  final Dio dio;

  AppInterceptors(this.dio);

  String log = "";
  //final auth = Get.find<AuthService>();

  @override
  Future<dynamic> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    log = "";
    logPrint('*** API Request - Start ***');

    printKV('URI', options.uri);
    printKV('METHOD', options.method);
    logPrint('HEADERS:');
    options.headers.forEach((key, v) => printKV(' - $key', v as Object));
    logPrint('BODY:');
    printAll(options.data ?? '');
    logPrint('*** API Request - End ***');
    CustomLogger.debug(log);
    return handler.next(options);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    log = "";
    logPrint('*** Api Error - Start ***:');

    logPrint('URI: ${err.requestOptions.uri}');
    if (err.response != null) {
      logPrint('STATUS CODE: ${err.response?.statusCode?.toString()}');
    }
    logPrint('$err');
    if (err.response != null) {
      printKV('REDIRECT', err.response?.realUri ?? '');
      logPrint('BODY:');
      printAll(err.response?.data.toString());
    }

    logPrint('*** Api Error - End ***:');
    CustomLogger.error(log);
    switch (err.type) {
      case DioErrorType.connectTimeout:
        break;
      case DioErrorType.sendTimeout:
        break;
      case DioErrorType.receiveTimeout:
        // throw DeadlineExceededException(err.requestOptions, err.response!);
        break;
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 400:
            //throw BadRequestException(err.requestOptions, err.response!);
            break;
          case 401:
            {
              Get.offAllNamed('/login');

              /*if (err.response != null) {
                switch (err.response!.data['code']) {
                  
                  case 'REFRESH':
                    CustomLogger.warning(
                      "Token expirado, Procede a refrescar...",
                    );
                    if (auth.attempts() > 3) {
                      auth.attempts(0);
                      auth.logout();
                      Get.offAllNamed("/login");
                    }
                    auth.attempts.value++;
                    final token = await auth.refresh();

                    if (token != "") {
                      auth.attempts(0);
                      err.requestOptions.headers["Authorization"] =
                          "Bearer $token";
                      //create request with new access token
                      final opts = Options(
                        method: err.requestOptions.method,
                        headers: err.requestOptions.headers,
                      );
                      final cloneReq = await dio.request(
                        err.requestOptions.path,
                        options: opts,
                        data: err.requestOptions.data,
                        queryParameters: err.requestOptions.queryParameters,
                      );

                      return handler.resolve(cloneReq);
                    } else {
                      auth.logout();
                      Get.offAllNamed("/login");
                    }
                    break;
                }
              }*/

              break;
              //throw UnauthorizedException(err.requestOptions, err.response!);

            }
          case 404:
            //throw NotFoundException(err.requestOptions, err.response!);
            break;
          case 409:
            // throw ConflictException(err.requestOptions, err.response!);
            break;
          case 500:
          //throw InternalServerErrorException(
          //err.requestOptions, err.response!,);
        }
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
      // throw NoInternetConnectionException(err.requestOptions, err.response!,);
    }

    return handler.next(err);
  }

  @override
  Future<dynamic> onResponse(
    final Response response,
    ResponseInterceptorHandler handler,
  ) async {
    log = "";
    logPrint('*** Api Response - Start ***');

    printKV('URI', response.requestOptions.uri);
    printKV('STATUS CODE', response.statusCode ?? '');
    printKV('REDIRECT', response.isRedirect ?? false);
    logPrint('BODY:');
    printAll(response.data ?? '');

    logPrint('*** Api Response - End ***');
    CustomLogger.info(log);

    return handler.next(response);
  }

  void printKV(String key, Object v) {
    logPrint('$key: $v');
  }

  void printAll(dynamic msg) {
    msg.toString().split('\n').forEach(logPrint);
  }

  void logPrint(String s) {
    log += "\n$s";
  }
}

class BadRequestException extends DioError {
  BadRequestException(RequestOptions r, Response res)
      : super(requestOptions: r, response: res);
  @override
  String toString() {
    return 'Invalid request';
  }
}

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r, Response res)
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return 'Unknown error occurred, please try again later.';
  }
}

class ConflictException extends DioError {
  ConflictException(RequestOptions r, Response res)
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return 'Conflict occurred';
  }
}

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r, Response res)
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return 'Access denied';
  }
}

class NotFoundException extends DioError {
  NotFoundException(RequestOptions r, Response res)
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return 'The requested information could not be found';
  }
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r, Response res)
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return 'No internet connection detected, please try again.';
  }
}

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r, Response res)
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return 'The connection has timed out, please try again.';
  }
}
