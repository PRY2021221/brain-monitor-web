import 'package:brain_monitor/app/utils/theme/palette.dart';
import 'package:get/get.dart';

abstract class Toast {
  Toast();

  static void show(String title, String body) {
    Get.snackbar(
      title,
      body,
      duration: const Duration(seconds: 3),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Palette.gray,
    );
  }

  static void showError() {
    Get.snackbar(
      'Error',
      'Ah ocurrido algo inesperado, por favor intentelo más tarde',
      duration: const Duration(seconds: 3),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Palette.gray,
    );
  }
}
