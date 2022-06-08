import 'package:brain_monitor/app/modules/patient_list/controllers/diagnosis_controller.dart';
import 'package:get/get.dart';

class DiagnosisBinding implements Bindings {
  @override
  void dependencies() {
     Get.lazyPut<DiagnosisController>(
      () => DiagnosisController(),
    );
  }
}
