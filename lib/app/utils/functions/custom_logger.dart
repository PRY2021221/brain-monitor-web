import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

abstract class CustomLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  Logger get logger => _logger;

  static void bodyLogger(Map<String, dynamic> map) => _logger.wtf(map);

  static void info(dynamic i) {
    _logger.i(i);
  }

  static void debug(dynamic d) {
    _logger.d(d);
  }

  static void warning(dynamic w) {
    _logger.w(w);
  }

  static void wtf(dynamic wtf) {
    _logger.wtf(wtf);
  }

  static void error(dynamic e) {
    _logger.e(e);
  }

  static void unknownErrorLog() {
    _logger.e("Error desconocido");
  }

  static void dioErrorLog(DioError e) {
    final res = e.response;
    if (res != null) {
      _logger.e(
        "URI -> ${res.requestOptions.uri}\nGot error : ${res.statusCode}-> ${e.toString()}\nServer Message -> ${res.data['message']}",
      );
    }
    _logger.e(e);
  }
}
