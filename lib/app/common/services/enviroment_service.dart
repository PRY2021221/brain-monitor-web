import 'package:brain_monitor/app/utils/constnants/http_constants.dart';
import 'package:brain_monitor/app/utils/freezed/environment.dart';
import 'package:get/get.dart';

class EnvironmentService extends GetxService {
  final Environment environment;
  late String baseUrl;
  late String baseSocketUrl;

  EnvironmentService({required this.environment}) {
    environment.when(
      local: () {
        baseUrl = HttpConstants.localUrl;
        baseSocketUrl = HttpConstants.localSocketUrl;
      },
      prod: () {
        baseUrl = HttpConstants.prodUrl;
        baseSocketUrl = HttpConstants.prodSocketUrl;
      },
    );
  }
}
