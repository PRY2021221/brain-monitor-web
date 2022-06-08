import 'package:brain_monitor/app/api/medical_history_client.dart';
import 'package:brain_monitor/app/common/services/api_service.dart';
import 'package:brain_monitor/app/common/services/auth_service.dart';
import 'package:brain_monitor/app/data/dashbard_module/dashboard_model.dart';
import 'package:brain_monitor/app/data/state_model.dart';
import 'package:brain_monitor/app/utils/functions/custom_logger.dart';
import 'package:dio/dio.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MonitorController extends GetxController {
  final touchedIndex = (-1).obs;

  final Rx<StateModel<DashboardModel>> state = StateModel<DashboardModel>().obs;
  late MedicalHistoryClient client;
  RxList<FlSpot> data1 = <FlSpot>[].obs;
  RxList<FlSpot> data2 = <FlSpot>[].obs;

  RxString intervention = "Todas".obs;
  RxString status = "Todas".obs;
  RxString prioritization = "Todas".obs;
  RxString sex = "Todas".obs;

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        color: const Color.fromARGB(255, 50, 5, 201),
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true,
          color: const Color.fromARGB(255, 50, 5, 201).withOpacity(0.2),
        ),
        spots: data1,
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        color: const Color(0xff0293ee),
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true,
          color: const Color(0xff0293ee).withOpacity(0.2),
        ),
        spots: data2,
      );

  @override
  void onInit() {
    final authService = Get.find<ApiService>();
    client = MedicalHistoryClient(authService.dio);
    getDashboardAdminData();
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

  void _data(DashboardModel data) {
    state.value = StateModel.data(data);
    data1.value = [
      FlSpot(0, data.interventionsByAge.cero.chemotherapies * 1.0),
      FlSpot(1, data.interventionsByAge.uno.chemotherapies * 1.0),
      FlSpot(2, data.interventionsByAge.dos.chemotherapies * 1.0),
      FlSpot(3, data.interventionsByAge.tres.chemotherapies * 1.0),
      FlSpot(4, data.interventionsByAge.cuadro.chemotherapies * 1.0),
      FlSpot(5, data.interventionsByAge.cinco.chemotherapies * 1.0),
      FlSpot(6, data.interventionsByAge.seis.chemotherapies * 1.0),
      FlSpot(7, data.interventionsByAge.siete.chemotherapies * 1.0),
      FlSpot(8, data.interventionsByAge.ocho.chemotherapies * 1.0),
      FlSpot(9, data.interventionsByAge.nueve.chemotherapies * 1.0),
      FlSpot(10, data.interventionsByAge.diez.chemotherapies * 1.0),
      FlSpot(11, data.interventionsByAge.once.chemotherapies * 1.0),
      FlSpot(12, data.interventionsByAge.doce.chemotherapies * 1.0),
      FlSpot(13, data.interventionsByAge.trece.chemotherapies * 1.0),
      FlSpot(14, data.interventionsByAge.catorce.chemotherapies * 1.0),
      FlSpot(15, data.interventionsByAge.quince.chemotherapies * 1.0),
      FlSpot(16, data.interventionsByAge.dieciseis.chemotherapies * 1.0),
      FlSpot(16, data.interventionsByAge.diecisiete.chemotherapies * 1.0),
    ];
    data1.refresh();
    data2.value = [
      FlSpot(0, data.interventionsByAge.cero.surgeries * 1.0),
      FlSpot(1, data.interventionsByAge.uno.surgeries * 1.0),
      FlSpot(2, data.interventionsByAge.dos.surgeries * 1.0),
      FlSpot(3, data.interventionsByAge.tres.surgeries * 1.0),
      FlSpot(4, data.interventionsByAge.cuadro.surgeries * 1.0),
      FlSpot(5, data.interventionsByAge.cinco.surgeries * 1.0),
      FlSpot(6, data.interventionsByAge.seis.surgeries * 1.0),
      FlSpot(7, data.interventionsByAge.siete.surgeries * 1.0),
      FlSpot(8, data.interventionsByAge.ocho.surgeries * 1.0),
      FlSpot(9, data.interventionsByAge.nueve.surgeries * 1.0),
      FlSpot(10, data.interventionsByAge.diez.surgeries * 1.0),
      FlSpot(11, data.interventionsByAge.once.surgeries * 1.0),
      FlSpot(12, data.interventionsByAge.doce.surgeries * 1.0),
      FlSpot(13, data.interventionsByAge.trece.surgeries * 1.0),
      FlSpot(14, data.interventionsByAge.catorce.surgeries * 1.0),
      FlSpot(15, data.interventionsByAge.quince.surgeries * 1.0),
      FlSpot(16, data.interventionsByAge.dieciseis.surgeries * 1.0),
      FlSpot(16, data.interventionsByAge.diecisiete.surgeries * 1.0),
    ];
    data2.refresh();
    state.refresh();
  }

  Future<void> getDashboardAdminData() async {
    final String? filterStatus = status() == "Todas"
        ? null
        : status() == "Activo"
            ? "A"
            : "I";
    final String? filterGender = sex() == "Todas"
        ? null
        : sex() == "Hombre"
            ? "M"
            : "F";

    final String? filterIntervention = intervention() == "Todas"
        ? null
        : sex() == "Quimioterapia"
            ? "C"
            : "S";
    final String? filterPrioritization = intervention() == "Todas"
        ? null
        : sex() == "Alta"
            ? "H"
            : sex() == "Baja"
                ? "L"
                : "M";
    ;

    _loading();
    CustomLogger.wtf(Get.find<AuthService>().payload().role);
    try {
      final data = Get.find<AuthService>().payload().role == "A"
          ? await client.getAdminDashboard(
              assignmentStatus: filterStatus,
              gender: filterGender,
              intervention: filterIntervention,
              prioritization: filterPrioritization,
            )
          : await client.getDashboard(
              doctorId: Get.find<AuthService>().payload().id,
              assignmentStatus: filterStatus,
              gender: filterGender,
              intervention: filterIntervention,
              prioritization: filterPrioritization,
            );
      _data(data);
    } on DioError catch (e) {
      _error(e);
    }
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
