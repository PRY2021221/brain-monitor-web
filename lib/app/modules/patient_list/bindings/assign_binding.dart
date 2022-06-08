import 'package:brain_monitor/app/modules/patient_list/controllers/assign_controller.dart';
import 'package:get/get.dart';

class AssignBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AssignController>(
      () => AssignController(),
    );
  }
}
