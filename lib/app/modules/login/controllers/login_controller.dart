import 'package:brain_monitor/app/api/auth_client.dart';
import 'package:brain_monitor/app/common/services/api_service.dart';
import 'package:brain_monitor/app/common/services/auth_service.dart';
import 'package:brain_monitor/app/common/services/navigation_service.dart';
import 'package:brain_monitor/app/data/state_model.dart';
import 'package:brain_monitor/app/utils/functions/custom_logger.dart';
import 'package:brain_monitor/app/utils/functions/toast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController dniController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final Rx<StateModel> state = StateModel().obs;

  late AuthClient client;

  bool validator() {
    if (dniController.text.length != 8 && dniController.text != "admin") {
      Toast.show("Aviso", "DNI debe tener 8 dígitos");
      return false;
    } else if (passwordController.text.isEmpty) {
      Toast.show("Aviso", "Ingrese contraseña");
      return false;
    }

    return true;
  }

  Future signIn({bool saveData = false}) async {
    state(StateModel.loading());
    final Map<String, dynamic> body = {
      "username": dniController.text,
      "password": passwordController.text,
    };
    CustomLogger.bodyLogger(body);
    try {
      final data = await client.getToken(
        body,
      );
      Get.find<ApiService>().addAuthHeader(data.token);
      final payload = await client.getPayload();
      Get.find<AuthService>().setPayload(payload);
      Get.find<NavigationService>().login();
    } on DioError catch (e) {
      state(StateModel());
      Toast.show("Aviso", "Credenciales Incorrectas");

      CustomLogger.dioErrorLog(e);
      if (e.response!.data["code"].toString() != 'MFA') {}

      throw Exception(e);
    }
    state(StateModel());
  }

  @override
  void onInit() {
    final authService = Get.find<ApiService>();
    client = AuthClient(authService.dio);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
