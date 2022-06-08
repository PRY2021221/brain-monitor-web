import 'package:brain_monitor/app/common/services/navigation_service.dart';
import 'package:brain_monitor/app/common/widgets/navbar.dart';
import 'package:brain_monitor/app/data/assignament_module/assignment_results.dart';
import 'package:brain_monitor/app/modules/request_list/controllers/request_list_controller.dart';
import 'package:brain_monitor/app/utils/components/padding.dart';
import 'package:brain_monitor/app/utils/components/texts.dart';
import 'package:brain_monitor/app/utils/functions/custom_dates.dart';
import 'package:brain_monitor/app/utils/theme/palette.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestListView extends GetView<RequestListController> {
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

  Widget _buildHeader() {
    return Column(
      children: [
        Row(
          children: [
            const Texts.w400(
              text: "Mis Solicitudes",
              fontSize: 15,
            ),
            const Spacer(),
            Padding(
              padding: CustomPadding.horizontal(18.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Palette.green,
                ),
                onPressed: () {
                  Get.find<NavigationService>().login();
                },
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
          ],
        ),
        Padding(
          padding: CustomPadding.fromLTRB(0, 20, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Expanded(
                flex: 2,
                child: Center(
                  child: Texts.normal(
                    text: "Nombre del Paciente",
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Texts.normal(
                    text: "Fecha de Registro",
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Texts.normal(
                    text: "Priorización",
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Texts.normal(
                    text: "DNI",
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Texts.normal(
                    text: "Estado",
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
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
                  flex: 2,
                  child: Center(
                    child: Texts.w400(
                      text: data.results[index].patientName!,
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Texts.normal(
                      text: CustomDate.dateFormatter(
                        data.results[index].createdAt!,
                      ),
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
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
                  flex: 2,
                  child: Center(
                    child: Texts.normal(
                      text: data.results[index].patientDni!,
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Texts.normal(
                      text: data.results[index].assignmentStatus == "A"
                          ? "Activo"
                          : "Inactivo",
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {
                          controller.updateAssignmentStatus(
                            data.results[index].id,
                            "A",
                          );
                        },
                        child: const Texts.w500(
                          text: "Aceptar",
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          controller.updateAssignmentStatus(
                            data.results[index].id,
                            "R",
                          );
                        },
                        child: const Texts.w500(
                          text: "Rechazar",
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
}
