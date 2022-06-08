import 'package:brain_monitor/app/api/auth_client.dart';
import 'package:brain_monitor/app/common/services/api_service.dart';
import 'package:brain_monitor/app/data/state_model.dart';
import 'package:brain_monitor/app/utils/functions/custom_logger.dart';
import 'package:brain_monitor/app/utils/functions/toast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();
  final TextEditingController dniController = TextEditingController();
  final TextEditingController tuitionController = TextEditingController();
  final TextEditingController specialtyController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  final Rx<StateModel> state = StateModel().obs;
  late AuthClient client;

  bool validator() {
    if (dniController.text.length != 8) {
      Toast.show("Aviso", "DNI debe tener 8 dígitos");
      return false;
    }
    if (passwordController.text.isEmpty) {
      Toast.show("Aviso", "La contraseña no puede estar vacía");

      return false;
    }
    if (firstNameController.text.isEmpty) {
      Toast.show("Aviso", "El nombre no puede estar vacío");
      return false;
    }
    if (lastNameController.text.isEmpty) {
      Toast.show("Aviso", "El apellido no puede estar vacío");
      return false;
    }
    if (tuitionController.text.isEmpty) {
      Toast.show("Aviso", "El número de colegiatura no puede estar vacío");
      return false;
    }
    if (specialtyController.text.isEmpty) {
      Toast.show("Aviso", "La especialidad no puede estar vacía");
      return false;
    }
    if(passwordController.text!=confirmController.text){
            Toast.show("Aviso", "Las contraseñas no coinciden");
      return false;
    }
    return true;
  }

  Future createAccount({bool saveData = false}) async {
    state(StateModel.loading());
    final Map<String, dynamic> body = {
      "username": dniController.text,
      "password": passwordController.text,
      "firstname": firstNameController.text,
      "lastname": lastNameController.text,
      "tuition": tuitionController.text,
      "speciality": specialtyController.text,
    };
    CustomLogger.bodyLogger(body);
    try {
      final data = await client.registerUser(
        body,
      );
      firstNameController.text = "";
      passwordController.text = "";
      confirmController.text = "";
      dniController.text = "";
      tuitionController.text = "";
      specialtyController.text = "";
      lastNameController.text = "";
      Toast.show("Aviso", "Cuenta creada correctamente");
    } on DioError catch (e) {
      state(StateModel());
      CustomLogger.dioErrorLog(e);
      if (e.response!.data["code"].toString() != 'MFA') {
        //Dialogs.errorDialog(message: e.response!.data["message"].toString());
      }

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
