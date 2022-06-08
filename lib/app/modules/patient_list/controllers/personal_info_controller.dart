import 'package:brain_monitor/app/api/patient_client.dart';
import 'package:brain_monitor/app/api/ubigeo_client.dart';
import 'package:brain_monitor/app/common/services/api_service.dart';
import 'package:brain_monitor/app/data/patient_module/patient_model.dart';
import 'package:brain_monitor/app/data/patient_module/ubigeo_model.dart';
import 'package:brain_monitor/app/data/state_model.dart';
import 'package:brain_monitor/app/utils/functions/custom_logger.dart';
import 'package:brain_monitor/app/utils/functions/toast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PersonalInfoController extends GetxController {
  final Rx<StateModel<List<UbigeoModel>>> stateDepartment =
      StateModel<List<UbigeoModel>>().obs;

  final Rx<StateModel<List<UbigeoModel>>> stateProvince =
      StateModel<List<UbigeoModel>>().obs;

  final Rx<StateModel<List<UbigeoModel>>> stateDistrict =
      StateModel<List<UbigeoModel>>().obs;

  final Rx<UbigeoModel> departmentId = UbigeoModel(id: "", name: "").obs;
  final Rx<UbigeoModel> provinceId = UbigeoModel(id: "", name: "").obs;
  final Rx<UbigeoModel> districtId = UbigeoModel(id: "", name: "").obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController firstLastController = TextEditingController();
  TextEditingController secondLastController = TextEditingController();
  TextEditingController hospitalController = TextEditingController();
  TextEditingController registerController = TextEditingController();
  TextEditingController birthController = TextEditingController();
  TextEditingController dniController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  late UbigeoClient ubigeoClient;

  final Rx<StateModel<bool>> state = StateModel<bool>().obs;
  late PatientClient patientClient;

  @override
  void onInit() {
    final authService = Get.find<ApiService>();
    ubigeoClient = UbigeoClient(authService.dio);
    patientClient = PatientClient(authService.dio);
    getDepartmentsData();
    super.onInit();
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

  bool validator() {
    if (nameController.text.isEmpty) {
      Toast.show("Aviso", "Nombre no puede estar vacío");
      return false;
    }
    if (firstLastController.text.isEmpty) {
      Toast.show("Aviso", "Primer apellido no puede estar vacío");
      return false;
    }
    if (secondLastController.text.isEmpty) {
      Toast.show("Aviso", "Segundo apellido no puede estar vacío");
      return false;
    }
    if (registerController.text.isEmpty) {
      Toast.show("Aviso", "Fecha de registro no puede estar vacío");
      return false;
    }
    if (birthController.text.isEmpty) {
      Toast.show("Aviso", "Fecha de nacimiento no puede estar vacío");
      return false;
    }
    if (hospitalController.text.isEmpty) {
      Toast.show("Aviso", "Hospital no puede estar vacío");
      return false;
    }
    if (dniController.text.length != 8) {
      Toast.show("Aviso", "DNI no puede estar vacío");
      return false;
    }
    if (numberController.text.length != 9) {
      Toast.show("Aviso", "Número debe ser válido");
      return false;
    }
    if (emailController.text.isEmpty) {
      Toast.show("Aviso", "Email no puede estar vacío");
      return false;
    }
    if (addressController.text.isEmpty) {
      Toast.show("Aviso", "Dirección no puede estar vacío");
      return false;
    }
    if (districtId().id.isEmpty) {
      Toast.show("Aviso", "Debe seleccionar una ubicación");
      return false;
    }
    return true;
  }

  Future<void> createPatient() async {
    _loading();
    final map = {
      "firstname": nameController.text,
      "firstLastname": firstLastController.text,
      "secondLastname": secondLastController.text,
      "registeredDate": registerController.text,
      "birthDate": birthController.text,
      "hospitalName": hospitalController.text,
      "dni": dniController.text,
      "phoneNumber": numberController.text,
      "email": emailController.text,
      "ubigeo": districtId().id,
      "address": addressController.text,
    };
    try {
      await patientClient.registerPatient(
        map,
      );
      _data(true);
    } on DioError catch (e) {
      _error(e);
    }
  }

  Future<int> getPatient() async {
    _loading();

    try {
      final data = await patientClient.getPatientById(
        dniController.text,
      );
      return data.id;
    } on DioError {
      return -1;
    }
  }

//////////////////////////////
  void _loading1() {
    stateDepartment.value = StateModel.loading();
    stateDepartment.refresh();
  }

  void _loading2() {
    stateProvince.value = StateModel.loading();
    stateProvince.refresh();
  }

  void _loading3() {
    stateDistrict.value = StateModel.loading();
    stateDistrict.refresh();
  }

  void _error1(DioError e) {
    stateDepartment.value = StateModel();
    CustomLogger.dioErrorLog(e);
    //Dialogs.errorDialog(message: e.response!.data["message"].toString());
    throw Exception(e);
  }

  void _error2(DioError e) {
    stateProvince.value = StateModel();
    CustomLogger.dioErrorLog(e);
    //Dialogs.errorDialog(message: e.response!.data["message"].toString());
    throw Exception(e);
  }

  void _error3(DioError e) {
    stateDistrict.value = StateModel();
    CustomLogger.dioErrorLog(e);
    //Dialogs.errorDialog(message: e.response!.data["message"].toString());
    throw Exception(e);
  }

  void _data1(List<UbigeoModel> data) {
    departmentId(data.first);
    departmentId.refresh();
    stateDepartment.value = StateModel.data(data);
    stateDepartment.refresh();
  }

  void _data2(List<UbigeoModel> data) {
    provinceId(data.first);
    provinceId.refresh();
    stateProvince.value = StateModel.data(data);
    stateProvince.refresh();
  }

  void _data3(List<UbigeoModel> data) {
    districtId(data.first);
    districtId.refresh();
    stateDistrict.value = StateModel.data(data);
    stateDistrict.refresh();
  }

  Future<void> getDepartmentsData() async {
    _loading1();
    _loading2();
    _loading3();
    provinceId(UbigeoModel(id: "", name: ""));
    districtId(UbigeoModel(id: "", name: ""));
    try {
      final data = await ubigeoClient.getDepartments();
      _data1(data);
    } on DioError catch (e) {
      _error1(e);
    }
  }

  Future<void> getProvincesData() async {
    _loading2();
    _loading3();
    districtId(UbigeoModel(id: "", name: ""));
    provinceId(UbigeoModel(id: "", name: ""));
    try {
      final data = await ubigeoClient.getProvinces(departmentId().id);
      _data2(data);
    } on DioError catch (e) {
      _error2(e);
    }
  }

  Future<void> getDistrictsData() async {
    _loading3();
    districtId(UbigeoModel(id: "", name: ""));
    try {
      final data =
          await ubigeoClient.getDistricts(departmentId().id, provinceId().id);
      _data3(data);
    } on DioError catch (e) {
      _error3(e);
    }
  }
}
