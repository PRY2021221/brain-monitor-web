import 'package:brain_monitor/app/data/auth_module.dart/payload_model.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  final Rx<PayloadModel> payload = PayloadModel(
    username: "Admin",
    role: "A",
    id: 0,
  ).obs;

  void setPayload(PayloadModel payload) {
    this.payload(payload);
    this.payload.refresh();
  }
}
