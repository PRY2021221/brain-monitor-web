import 'package:brain_monitor/app/modules/patient_list/controllers/treatment_controller.dart';
import 'package:get/get.dart';

class TreatmentBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TreatmentController>(
      () => TreatmentController(),
    );
  }
}
