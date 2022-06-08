import 'dart:convert';

import 'package:brain_monitor/app/api/medical_history_client.dart';
import 'package:brain_monitor/app/common/services/api_service.dart';
import 'package:brain_monitor/app/data/cancer_detector/diagnostic_results.dart';
import 'package:brain_monitor/app/data/patient_module/magnetic_resonance_model.dart';
import 'package:brain_monitor/app/data/state_model.dart';
import 'package:brain_monitor/app/modules/patient_list/controllers/patient_list_controller.dart';
import 'package:brain_monitor/app/utils/functions/custom_logger.dart';
import 'package:brain_monitor/app/utils/functions/toast.dart';
import 'package:brain_monitor/app/utils/interceptors/app_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide FormData, MultipartFile, Response;

import 'dart:ui' as ui;

class DiagnosisController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController diagnosisController = TextEditingController();
  TextEditingController treatmentController = TextEditingController();

  bool diagnosisValidator() {
    if (!picked()) {
      Toast.show(
        "Aviso",
        "Debe seleccionar una imagen",
      );
      return false;
    }
    if (nameController.text.isEmpty) {
      Toast.show(
        "Aviso",
        "Nombre no puede estar vacío",
      );
      return false;
    }
    return true;
  }

  late MedicalHistoryClient client;
  final RxList<MagneticResonanceModel> results = <MagneticResonanceModel>[].obs;

  final Rx<StateModel<List<MagneticResonanceModel>>> state =
      StateModel<List<MagneticResonanceModel>>().obs;

  @override
  void onInit() {
    final authService = Get.find<ApiService>();
    client = MedicalHistoryClient(authService.dio);
    fetchDiagnosis();
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

  void _data(List<MagneticResonanceModel> data) {
    state.value = StateModel.data(data);
    results(data);

    state.refresh();
  }

  bool validatorDiagnosis() {
    if (diagnosisController.text.isEmpty) {
      Toast.show("Aviso", "Diagnostico no debe estar vacío");
      return false;
    }
    if (treatmentController.text.isEmpty) {
      Toast.show("Aviso", "Tratamiento no debe estar vacío");
      return false;
    }
    return true;
  }

  Future<void> addDiagnosis() async {
    final String clinicalId = Get.find<PatientListController>()
        .selectedClinicalHistoryId()
        .toString();

    final map = {
      "diagnosisDescription": diagnosisController.text,
      "treatmentDescription": treatmentController.text,
    };
    try {
      await client.registerDiagnosisDescription(
        map,
        clinicalId,
      );
      Toast.show("Aviso", "Agrego correctamente el diagnóstico y tratamiento");
      Get.offAllNamed("/monitor");
    } on DioError catch (e) {
      diagnosisController.text = "";
      treatmentController.text = "";
      _error(e);
    }
  }

  Future<void> addImage() async {
    _loading();
    if (file != null) {
      final bytes = file!.bytes!;

      final fileRequest = MultipartFile.fromBytes(
        bytes,
        filename: "${file!.name}.png",
      );
      final api = Get.find<ApiService>();
      final MapEntry<String, MultipartFile> docEntry =
          MapEntry("file", fileRequest);
      final formData = FormData.fromMap({
        'resonanceAreaName': nameController.text,
      });
      formData.files.add(docEntry);

      try {
        await api.dio.post(
          '/medical-history/magnetic-resonance/${Get.find<PatientListController>().selectedClinicalHistoryId()}',
          data: formData,
          options: Options(
            headers: {'content-type': 'multipart/form-data'},
          ),
        );
        nameController.text = "";
        Toast.show("Aviso", "Se ha agregado correctamente");
        fetchDiagnosis();
      } on DioError catch (e) {
        throw Exception(e);
      }
      file = null;
      result = null;
      picked(false);
    }
  }

  Future<void> fetchDiagnosis() async {
    _loading();
    try {
      final data = await client.getMagneticResonance(
        "${Get.find<PatientListController>().selectedClinicalHistoryId()}",
      );
      _data(data);
    } on DioError catch (e) {
      _error(e);
    }
  }

  Future<void> setCancer(double percent) async {
    try {
      final map = {
        "percentage": percent,
      };
      await client.setCancer(
        map,
        "${Get.find<PatientListController>().selectedClinicalHistoryId()}",
      );
      Toast.show(
        "Aviso",
        "Se ha realizado el análisis de las resonancias magnéticas",
      );
    } on DioError catch (e) {
      _error(e);
    }
  }

  Future<void> deleteImage(int id) async {
    _loading();
    try {
      final data = await client.deleteMagneticResonance(
        "$id",
      );
      Toast.show("Aviso", "Se ha eliminado la resonancia magnética");
      fetchDiagnosis();
    } on DioError catch (e) {
      _error(e);
    }
  }
  //

  late final FilePickerResult? result;
  late final PlatformFile? file;

  RxBool picked = false.obs;
  Future<dynamic> pickImage() async {
    try {
      final result = await FilePicker.platform.pickFiles();
      if (result != null) {
        file = result.files.first;

        picked(true);
      }
    } on Exception {
      picked(false);
    }

    //final pickedImage =
    // await ImagePicker().pickImage(source: ImageSource.gallery);
    //bytesFromPicker = await ImagePickerWeb.getImageAsBytes();

    /*if (kIsWeb) {
      imageF = pickedImage ?? null;
    } else {
      imageFile = pickedImage != null ? File(pickedImage.path) : null;
    }*/
    /*if (bytesFromPicker != null) {
      picked(true);
    }*/
    /*if (imageFile != null) {
      picked(true);
    }*/
  }

//* Diagnostico
  RxInt selectedImage = 0.obs;
  final Rx<StateModel<List<DiagnosticResults>>> diagnosticState =
      StateModel<List<DiagnosticResults>>().obs;

  RxList<DiagnosticResults> diagnosticResults = <DiagnosticResults>[].obs;
  void _loadingDiagnostic() {
    diagnosticState.value = StateModel.loading();
    diagnosticState.refresh();
  }

  Future<void> makeDiagnostic() async {
    _loadingDiagnostic();
    diagnosticResults().clear();
    for (final i in results()) {
      await processImage(i.resonanceImageLink);
    }
    setCancer(percentage());
    diagnosticState.value = StateModel.data(diagnosticResults());
    diagnosticState.refresh();
  }

  final RxDouble percentage = 0.0.obs;
  Future<void> processImage(String url) async {
    _loading();

    final _dio = Dio();
    _dio.options.baseUrl = "https://api.deepai.org/api";

    final formData = FormData.fromMap({
      'image': url,
    });
    _dio.interceptors.add(
      AppInterceptors(_dio),
    );
    try {
      final response = await _dio.post(
        "/glioma-detection-in-mri-1602-dev",
        data: formData,
        options: Options(
          headers: {'api-key': '5eae5077-8a15-4bc2-9661-d170c35442cc'},
        ),
      );
      final diagnosis =
          DiagnosticResults.fromJson(response.data as Map<String, dynamic>);
      for (final i in diagnosis.output.objects) {
        if (percentage() < i.confidence) {
          percentage(i.confidence);
        }
      }
      diagnosticResults().add(
        diagnosis,
      );
    } on DioError {
      diagnosticState.value = StateModel();
      diagnosticState.refresh();
    }
  }

  List<Color> get colors => const [
        Color.fromARGB(255, 12, 121, 145),
        Color.fromARGB(255, 103, 150, 15),
        Color.fromARGB(255, 104, 106, 190),
        Color.fromARGB(255, 202, 227, 17),
        Color.fromARGB(255, 154, 85, 168),
        Color.fromARGB(255, 208, 163, 81),
        Color.fromARGB(255, 198, 44, 67),
        Color.fromARGB(255, 187, 88, 7),
        Color.fromARGB(255, 145, 12, 143),
        Color.fromARGB(255, 71, 29, 226),
        Color.fromARGB(255, 55, 70, 3),
        Color.fromARGB(255, 25, 203, 48),
        Color.fromARGB(247, 225, 6, 6),
      ];
}

class MyPainter extends CustomPainter {
  //         <-- CustomPainter class
  final List<Offset> points;
  final Color color;
  MyPainter({
    required this.points,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const pointMode = ui.PointMode.polygon;
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    canvas.drawPoints(pointMode, points, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
