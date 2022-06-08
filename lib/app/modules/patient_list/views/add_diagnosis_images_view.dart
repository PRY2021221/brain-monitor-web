import 'package:brain_monitor/app/common/widgets/navbar.dart';
import 'package:brain_monitor/app/data/patient_module/magnetic_resonance_model.dart';
import 'package:brain_monitor/app/modules/patient_list/controllers/diagnosis_controller.dart';
import 'package:brain_monitor/app/utils/components/padding.dart';
import 'package:brain_monitor/app/utils/components/texts.dart';
import 'package:brain_monitor/app/utils/functions/custom_dates.dart';
import 'package:brain_monitor/app/utils/functions/toast.dart';
import 'package:brain_monitor/app/utils/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddDiagnosisImages extends GetView<DiagnosisController> {
  const AddDiagnosisImages({Key? key}) : super(key: key);

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
              text: "Diagnóstico",
              fontSize: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                        child: const Texts.w400(
                          text: "Nombre de la imagen",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child: formItem(
                          textController: controller.nameController,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: CustomPadding.fromLTRB(20, 20, 0, 0),
                            child: const Texts.w400(
                              text: "Resonancia Magnética",
                              fontSize: 10,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: CustomPadding.fromLTRB(20, 10, 0, 0),
                                child: OutlinedButton(
                                  onPressed: () async {
                                    await controller.pickImage();
                                  },
                                  child: const Texts.w600(
                                    text: "Adjuntar",
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: CustomPadding.fromLTRB(20, 10, 0, 0),
                                child: Obx(
                                  () => Icon(
                                    controller.picked()
                                        ? Icons.check_circle_rounded
                                        : Icons.check_circle_outline_rounded,
                                    color: controller.picked()
                                        ? Palette.green
                                        : Palette.gray,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(20, 30, 0, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Palette.green,
                          ),
                          onPressed: () async {
                            if (controller.diagnosisValidator()) {
                              controller.addImage();
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: Text(
                              "Agregar",
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
                ),
              ],
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
            Center(
              child: Padding(
                padding: CustomPadding.fromLTRB(0, 20, 0, 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Palette.green,
                  ),
                  onPressed: () async {
                    controller.makeDiagnostic();
                    Get.toNamed("/patient-list/diagnosis_info");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Text(
                      "Ver Diagnóstico",
                      style: GoogleFonts.montserrat(
                        color: Palette.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(List<MagneticResonanceModel> data) {
    return Expanded(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: CustomPadding.vertical(10),
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Texts.w400(
                      text: data[index].resonanceAreaName,
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Texts.normal(
                      text: CustomDate.dateFormatter(
                        data[index].createdAt,
                      ),
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Image.network(
                      data[index].resonanceImageLink,
                      width: 50,
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      controller.deleteImage(data[index].id);
                    },
                    child: const Texts.w500(
                      text: "Borrar",
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

  Widget _buildHeader() {
    return Column(
      children: [
        Padding(
          padding: CustomPadding.top(8.0),
          child: Row(
            children: const [
              Texts.w400(
                text: "Tratamientos",
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
                    text: "Nombre del Área",
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Texts.normal(
                    text: "Fecha de Subida",
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Texts.normal(
                    text: "Imagen",
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(
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

  Widget formItem({
    bool enabled = true,
    TextEditingController? textController,
  }) {
    return SizedBox(
      height: 22,
      child: TextFormField(
        style: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        cursorColor: Palette.black,
        enabled: enabled,
        controller: textController,
        decoration: InputDecoration(
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
    );
  }
}
