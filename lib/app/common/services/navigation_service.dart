import 'package:get/get.dart';

enum Navigation { login, signIn, monitor, profile, request, patient }

class NavigationService extends GetxService {
  final current = (Navigation.login).obs;
  final logged = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void login() {
    logged(true);
    current(Navigation.monitor);
    Get.offAllNamed("/monitor");
  }

  void goToPage() {
    switch (current()) {
      case Navigation.login:
        Get.offAllNamed('/login');
        break;
      case Navigation.signIn:
        Get.offAllNamed('/sign-in');
        break;
      case Navigation.monitor:
        Get.offAllNamed('/monitor');
        break;
      case Navigation.profile:
        Get.offAllNamed('/profile');
        break;
      case Navigation.request:
        Get.offAllNamed('/request-list');
        break;
      case Navigation.patient:
        Get.offAllNamed('/patient-list');
        break;

      default:
    }
  }
}
