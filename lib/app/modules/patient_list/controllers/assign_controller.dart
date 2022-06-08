import 'package:brain_monitor/app/api/medical_history_client.dart';
import 'package:brain_monitor/app/common/services/api_service.dart';
import 'package:brain_monitor/app/common/services/auth_service.dart';
import 'package:brain_monitor/app/data/assignament_module/assignment_model.dart';
import 'package:brain_monitor/app/data/assignament_module/assignment_results.dart';
import 'package:brain_monitor/app/data/state_model.dart';
import 'package:brain_monitor/app/modules/patient_list/controllers/patient_list_controller.dart';
import 'package:brain_monitor/app/utils/functions/custom_logger.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AssignController extends GetxController {
  RxString statePatient = "Activo".obs;
  RxString prioritization = "Baja".obs;
  final RxList<AssignmentModel> results = <AssignmentModel>[].obs;
  final Rx<int> page = 1.obs;
  final Rx<StateModel<AssignmentResults>> state =
      StateModel<AssignmentResults>().obs;
  late MedicalHistoryClient client;

  @override
  void onInit() {
    final authService = Get.find<ApiService>();
    client = MedicalHistoryClient(authService.dio);
    page(1);
    fetchTreatments();
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

  void _data(AssignmentResults data) {
    state.value = StateModel.data(data);
    results(data.results);

    state.refresh();
  }

  Future<void> createAssignment() async {
    final String clinicalId = Get.find<PatientListController>()
        .selectedClinicalHistoryId()
        .toString();
    final map = {
      "prioritization": prioritization() == "Baja"
          ? "L"
          : prioritization() == "Alta"
              ? "H"
              : "M",
      "assignmentStatus": statePatient() == "Activo" ? "A" : "I",
    };
    try {
      await client.registerAssignment(
        map,
        clinicalId,
      );

      fetchTreatments();
    } on DioError catch (e) {
      _error(e);
    }
  }

  Future<void> fetchTreatments() async {
    _loading();
    try {
      final data = await client.getMyAssignments(
        "${Get.find<PatientListController>().selectedClinicalHistoryId()}",
        10,
        page(),
      );
      _data(data);
    } on DioError catch (e) {
      _error(e);
    }
  }

  void _moreData(AssignmentResults data) {
    state().maybeWhen(
      null,
      data: (metadata) {
        final aux = metadata.copyWith(
          results: [...metadata.results, ...data.results],
        );
        _data(aux);
      },
      orElse: () {},
    );
  }

  Future<void> loadMore() async {
    state().maybeWhen(
      null,
      data: (metadata) async {
        if (page < metadata.totalPages) {
          page.value++;
          try {
            final data = await client.getMyAssignments(
              "${Get.find<AuthService>().payload().id}",
              10,
              page(),
            );
            _moreData(data);
          } on DioError catch (e) {
            _error(e);
          }
        } else {}
      },
      orElse: () {},
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
