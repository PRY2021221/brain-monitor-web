import 'package:brain_monitor/app/modules/patient_list/controllers/personal_info_controller.dart';
import 'package:get/get.dart';

class PersonalInfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonalInfoController>(
      () => PersonalInfoController(),
    );
  }
}
