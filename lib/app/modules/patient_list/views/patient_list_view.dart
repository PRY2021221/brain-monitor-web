import 'package:brain_monitor/app/common/widgets/navbar.dart';
import 'package:brain_monitor/app/data/medical_history_module/medical_history_results.dart';
import 'package:brain_monitor/app/modules/patient_list/controllers/patient_list_controller.dart';
import 'package:brain_monitor/app/utils/components/padding.dart';
import 'package:brain_monitor/app/utils/components/texts.dart';
import 'package:brain_monitor/app/utils/theme/palette.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientListView extends GetView<PatientListController> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.height / 12, 1000),
        child: const NavBar(),
      ),
      body: Padding(
        padding: CustomPadding.fromLTRB(20, 15, 20, 0),
        child: Obx(
          () {
            return controller.state().when(
                  () => const SizedBox(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(
                      color: Palette.green,
                    ),
                  ),
                  data: (data) => Column(
                    children: [
                      _buildHeader(),
                      _buildBody(data),
                    ],
                  ),
                );
          },
        ),
      ),
    );
  }

  Widget _buildBody(MedicalHistoryResults data) {
    return Expanded(
      child: ListView.builder(
        itemCount: data.results.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: CustomPadding.vertical(10),
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Texts.w400(
                      text: data.results[index].patientName,
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Texts.normal(
                      text: data.results[index].registeredDate.toString(),
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Texts.normal(
                      text: data.results[index].prioritization == "H"
                          ? "Alta"
                          : data.results[index].prioritization == "M"
                              ? "Medio"
                              : data.results[index].prioritization == "L"
                                  ? "Bajo"
                                  : "Sin Asignar",
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Texts.normal(
                      text: data.results[index].patientDni,
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Texts.normal(
                      text: "${data.results[index].patientAge}",
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {
                          controller.selectedClinicalHistoryId(
                            data.results[index].medicalHistoryId,
                          );
                          Get.toNamed("/patient-list/treatments");
                        },
                        child: const Texts.w500(
                          text: "Tratamiento",
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          controller.selectedClinicalHistoryId(
                            data.results[index].medicalHistoryId,
                          );
                          Get.toNamed("/patient-list/assign");
                        },
                        child: const Texts.w500(
                          text: "Asignar",
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          controller.selectedClinicalHistoryId(
                            data.results[index].medicalHistoryId,
                          );
                          Get.toNamed("/patient-list/diagnosis_images");
                        },
                        child: const Texts.w500(
                          text: "Diagnostico",
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Row(
          children: [
            const Texts.w400(
              text: "Mis Pacientes",
              fontSize: 15,
            ),
            const Spacer(),
            Padding(
              padding: CustomPadding.horizontal(18.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Palette.green,
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: Text(
                    "Filtros",
                    style: GoogleFonts.montserrat(
                      color: Palette.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Palette.green,
              ),
              onPressed: () {
                Get.toNamed('/patient-list/personal_info');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Text(
                  "Registrar Paciente",
                  style: GoogleFonts.montserrat(
                    color: Palette.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: CustomPadding.fromLTRB(0, 20, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(
                child: Center(
                  child: Texts.normal(
                    text: "Nombre del Paciente",
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Texts.normal(
                    text: "Fecha de Registro",
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Texts.normal(
                    text: "Priorización",
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Texts.normal(
                    text: "DNI",
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Texts.normal(
                    text: "Edad",
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Texts.normal(
                    text: "Acciones",
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 2,
          color: Palette.black,
        ),
      ],
    );
  }
}
