import 'package:brain_monitor/app/api/medical_history_client.dart';
import 'package:brain_monitor/app/common/services/api_service.dart';
import 'package:brain_monitor/app/data/state_model.dart';
import 'package:brain_monitor/app/modules/patient_list/controllers/patient_list_controller.dart';
import 'package:brain_monitor/app/modules/patient_list/controllers/personal_info_controller.dart';
import 'package:brain_monitor/app/utils/functions/custom_logger.dart';
import 'package:brain_monitor/app/utils/functions/toast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClinicHistoryController extends GetxController {
  RxBool internaciones = false.obs;
  RxBool cirugias = false.obs;
  RxBool alergicos = false.obs;
  RxBool trasfusiones = false.obs;

  RxString seguro = "EsSalud".obs;
  RxString sangre = "A+".obs;
  RxString cancerFamily = "No".obs;
  RxString relationship = "Madre".obs;

  TextEditingController birthPlaceController = TextEditingController();
  TextEditingController widthController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController parentNamesController = TextEditingController();
  TextEditingController contactNumberController = TextEditingController();
  TextEditingController dniController = TextEditingController();
  TextEditingController illsController = TextEditingController();

  final Rx<StateModel<bool>> state = StateModel<bool>().obs;
  late MedicalHistoryClient client;
  @override
  void onInit() {
    final authService = Get.find<ApiService>();

    client = MedicalHistoryClient(authService.dio);
    super.onInit();
  }

  bool validator() {
    if (birthPlaceController.text.isEmpty) {
      Toast.show("Aviso", "Lugar de nacimiento no debe estar vacío");
      return false;
    }
    if (widthController.text.isEmpty) {
      Toast.show("Aviso", "Peso no debe estar vacío");
      return false;
    }
    if (heightController.text.isEmpty) {
      Toast.show("Aviso", "Altura no debe estar vacío");
      return false;
    }
    if (parentNamesController.text.isEmpty) {
      Toast.show("Aviso", "Nombre de apoderado no debe estar vacío");
      return false;
    }
    if (contactNumberController.text.length != 9) {
      Toast.show("Aviso", "Número de contacto debe tener 9 dígitos");
      return false;
    }
    if (dniController.text.length != 8) {
      Toast.show("Aviso", "DNI debe tener 8 dígitos");
      return false;
    }
    if (illsController.text.isEmpty) {
      Toast.show("Aviso", "Enfermedades no debe estar vacío");
      return false;
    }
    return true;
  }

  Future<void> createHistory() async {
    _loading();
    final String insurance = seguro() == "EsSalud"
        ? "E"
        : seguro() == "SIS"
            ? "S"
            : seguro() == "EPS"
                ? "P"
                : "O";
    String familiar = relationship() == "Madre"
        ? "M"
        : seguro() == "Padre"
            ? "P"
            : seguro() == "Hermano"
                ? "H"
                : seguro() == "Hermano"
                    ? "S"
                    : "O";
    final patientId = await Get.find<PersonalInfoController>().getPatient();
    final map = {
      "birthPlace": birthPlaceController.text,
      "healthInsurance": insurance,
      "bloodType": sangre(),
      "hasRelativeWithCancer": cancerFamily() == "Si",
      "weight": widthController.text,
      "height": heightController.text,
      "hadHospitalizations": internaciones(),
      "hadTransfusions": trasfusiones(),
      "hadSurgeries": cirugias(),
      "haveAllergies": alergicos(),
      "existingDiseases": illsController.text,
      "responsibleName": parentNamesController.text,
      "responsibleRelationship": familiar,
      "responsiblePhoneNumber": contactNumberController.text,
      "responsibleDni": dniController.text,
      "patientId": patientId,
    };
    try {
      await client.registerMedicalHistory(
        map,
      );
      _data(true);
      Get.find<PatientListController>().fetchMedicalHistory();
      Toast.show("Aviso", "Se ha creado un paciente correctamente");
      Get.offAllNamed('/patient-list');
    } on DioError catch (e) {
      Toast.show("Aviso", "Ah ocurrido un error");
      _error(e);
    }
  }

  void _loading() {
    state.value = StateModel.loading();
    state.refresh();
  }

  void _error(DioError e) {
    state.value = StateModel();
    CustomLogger.dioErrorLog(e);
    //Dialogs.errorDialog(message: e.response!.data["message"].toString());
    throw Exception(e);
  }

  void _data(bool data) {
    state.value = StateModel.data(data);

    state.refresh();
  }
}
