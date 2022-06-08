import 'package:brain_monitor/app/modules/patient_list/controllers/clinic_history_controller.dart';
import 'package:get/get.dart';

class ClinicHistoryBinding implements Bindings {
  @override
  void dependencies() {
     Get.lazyPut<ClinicHistoryController>(
      () => ClinicHistoryController(),
    );
  }
}
