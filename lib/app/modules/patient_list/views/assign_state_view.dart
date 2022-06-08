import 'package:brain_monitor/app/common/widgets/navbar.dart';
import 'package:brain_monitor/app/data/assignament_module/assignment_results.dart';
import 'package:brain_monitor/app/modules/patient_list/controllers/assign_controller.dart';
import 'package:brain_monitor/app/utils/components/padding.dart';
import 'package:brain_monitor/app/utils/components/texts.dart';
import 'package:brain_monitor/app/utils/functions/custom_dates.dart';
import 'package:brain_monitor/app/utils/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AssignState extends GetView<AssignController> {
  const AssignState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.height / 12, 1000),
        child: const NavBar(),
      ),
      body: Padding(
        padding: CustomPadding.fromLTRB(40, 15, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Texts.w400(
              text: "Solcitud de Asignación",
              fontSize: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 20, 5, 0),
                        child: const Texts.w400(
                          text: "Priorización",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 5, 0),
                        child: SizedBox(
                          height: 22,
                          child: DropdownButtonFormField<String>(
                            onChanged: (value) {
                              controller.prioritization(value);
                            },
                            value: controller.prioritization(),
                            items: [
                              "Baja",
                              "Media",
                              "Alta",
                            ]
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                      style: GoogleFonts.montserrat(
                                        color: Palette.black,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                            decoration: InputDecoration(
                              contentPadding: CustomPadding.horizontal(5),
                              filled: true,
                              fillColor: Palette.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 20, 5, 0),
                        child: const Texts.w400(
                          text: "Estado",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 5, 0),
                        child: SizedBox(
                          height: 22,
                          child: DropdownButtonFormField<String>(
                            onChanged: (value) {
                              controller.statePatient(value);
                            },
                            value: controller.statePatient(),
                            items: [
                              "Activo",
                              "Inactivo",
                            ]
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                      style: GoogleFonts.montserrat(
                                        color: Palette.black,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                            decoration: InputDecoration(
                              contentPadding: CustomPadding.horizontal(5),
                              filled: true,
                              fillColor: Palette.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Obx(
                          () {
                            return controller.state().when(
                                  () => const SizedBox(),
                                  loading: () => const Center(
                                    child: CircularProgressIndicator(
                                      color: Palette.green,
                                    ),
                                  ),
                                  data: (data) => _buildPrioritization(
                                    data.currentPrioritization!,
                                  ),
                                );
                          },
                        ),
                      ),
                      Expanded(
                        child: Obx(
                          () {
                            return controller.state().when(
                                  () => const SizedBox(),
                                  loading: () => const Center(
                                    child: CircularProgressIndicator(
                                      color: Palette.green,
                                    ),
                                  ),
                                  data: (data) => _buildState(
                                    data.currentAssignmentStatus!,
                                  ),
                                );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Palette.green,
                ),
                onPressed: () async {
                  await controller.createAssignment();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Text(
                    "Solicitar",
                    style: GoogleFonts.montserrat(
                      color: Palette.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            _buildHeader(),
            Obx(
              () {
                return controller.state().when(
                      () => const SizedBox(),
                      loading: () => const Center(
                        child: CircularProgressIndicator(
                          color: Palette.green,
                        ),
                      ),
                      data: (data) => _buildBody(
                        data,
                      ),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(AssignmentResults data) {
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
                      text: data.results[index].assignmentStatus,
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Texts.normal(
                      text: data.results[index].prioritization,
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Texts.normal(
                      text: CustomDate.dateFormatter(
                        data.results[index].updatedAt!,
                      ),
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Texts.normal(
                      text: data.results[index].requestStatus!,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildState(String text) {
    final String label = text == "I"
        ? "Inactivo"
        : text == "N"
            ? "Sin Asignar"
            : "Activo";
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: GoogleFonts.montserrat(
                color: Palette.black,
                fontSize: 30,
              ),
            ),
            Text(
              "Priorización",
              style: GoogleFonts.montserrat(
                color: Palette.black,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPrioritization(String text) {
    final String label = text == "L"
        ? "Baja"
        : text == "H"
            ? "Alta"
            : text == "M"
                ? "Media"
                : "Sin Asignar";

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: GoogleFonts.montserrat(
                color: Palette.black,
                fontSize: 30,
              ),
            ),
            Text(
              "Estado",
              style: GoogleFonts.montserrat(
                color: Palette.black,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Padding(
          padding: CustomPadding.top(8.0),
          child: Row(
            children: const [
              Texts.w400(
                text: "Estado Solicitudes",
                fontSize: 15,
              ),
            ],
          ),
        ),
        Padding(
          padding: CustomPadding.fromLTRB(0, 20, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(
                child: Center(
                  child: Texts.normal(
                    text: "Estado Paciente",
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
                    text: "Fecha",
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Texts.normal(
                    text: "Estado Solicitud",
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
