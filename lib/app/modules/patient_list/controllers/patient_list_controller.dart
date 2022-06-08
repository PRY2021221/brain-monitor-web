import 'package:brain_monitor/app/api/medical_history_client.dart';
import 'package:brain_monitor/app/common/services/api_service.dart';
import 'package:brain_monitor/app/common/services/auth_service.dart';
import 'package:brain_monitor/app/data/medical_history_module/medical_history_model.dart';
import 'package:brain_monitor/app/data/medical_history_module/medical_history_results.dart';
import 'package:brain_monitor/app/data/state_model.dart';
import 'package:brain_monitor/app/utils/functions/custom_logger.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class PatientListController extends GetxController {
  final RxList<MedicalHistoryModel> results = <MedicalHistoryModel>[].obs;
  final Rx<int> page = 1.obs;
  final Rx<StateModel<MedicalHistoryResults>> state =
      StateModel<MedicalHistoryResults>().obs;
  late MedicalHistoryClient client;

  final selectedClinicalHistoryId = 0.obs;

  @override
  void onInit() {
    final authService = Get.find<ApiService>();
    client = MedicalHistoryClient(authService.dio);
    page(1);
    fetchMedicalHistory();
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

  void _data(MedicalHistoryResults data) {
    state.value = StateModel.data(data);
    results(data.results);

    state.refresh();
  }

  Future<void> fetchMedicalHistory() async {
    _loading();
    try {
      final data = await client.getMedicalHistoryByDoc(
        "${Get.find<AuthService>().payload().id}",
        10,
        page(),
      );
      _data(data);
    } on DioError catch (e) {
      _error(e);
    }
  }

  void _moreData(MedicalHistoryResults data) {
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
            final data = await client.getMedicalHistoryByDoc(
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
