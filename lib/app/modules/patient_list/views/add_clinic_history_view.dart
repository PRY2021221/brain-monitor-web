import 'package:brain_monitor/app/common/widgets/navbar.dart';
import 'package:brain_monitor/app/modules/patient_list/controllers/clinic_history_controller.dart';
import 'package:brain_monitor/app/modules/patient_list/controllers/personal_info_controller.dart';
import 'package:brain_monitor/app/modules/patient_list/views/add_personal_info_view.dart';
import 'package:brain_monitor/app/utils/components/padding.dart';
import 'package:brain_monitor/app/utils/components/texts.dart';
import 'package:brain_monitor/app/utils/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddClinicHistory extends GetView<ClinicHistoryController> {
  const AddClinicHistory({Key? key}) : super(key: key);

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
              text: "Historia Clínica",
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
                          text: "Lugar de nacimiento",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child: formItem(
                            textController: controller.birthPlaceController),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                                  child: const Texts.w400(
                                    text: "Seguro Médico",
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                                  child: SizedBox(
                                    height: 22,
                                    child: DropdownButtonFormField<String>(
                                      onChanged: (value) {
                                        controller.seguro(value);
                                      },
                                      value: controller.seguro(),
                                      items: [
                                        "EsSalud",
                                        "SIS",
                                        "EPS",
                                        "Otro",
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
                                        contentPadding:
                                            CustomPadding.horizontal(5),
                                        filled: true,
                                        fillColor: Palette.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: CustomPadding.horizontal(15),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                                  child: const Texts.w400(
                                    text: "Tipo de Sangre",
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                                  child: SizedBox(
                                    height: 22,
                                    child: DropdownButtonFormField<String>(
                                      onChanged: (value) {
                                        controller.sangre(value);
                                      },
                                      value: controller.sangre(),
                                      items: [
                                        "A+",
                                        "A-",
                                        "B+",
                                        "B-",
                                        "AB+",
                                        "AB-",
                                        "O+",
                                        "O-",
                                        "U",
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
                                        contentPadding:
                                            CustomPadding.horizontal(5),
                                        filled: true,
                                        fillColor: Palette.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                                  child: const Texts.w400(
                                    text: "Familia con Cancer",
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                                  child: SizedBox(
                                    height: 22,
                                    child: DropdownButtonFormField<String>(
                                      onChanged: (value) {
                                        controller.cancerFamily(value);
                                      },
                                      value: controller.cancerFamily(),
                                      items: [
                                        "No",
                                        "Si",
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
                                        contentPadding:
                                            CustomPadding.horizontal(5),
                                        filled: true,
                                        fillColor: Palette.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                                  child: const Texts.w400(
                                    text: "Peso",
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                                  child: formItem(
                                      textController:
                                          controller.widthController),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: CustomPadding.horizontal(15),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                                  child: const Texts.w400(
                                    text: "Altura",
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                                  child: formItem(
                                      textController:
                                          controller.heightController),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: CustomPadding.horizontal(20),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                                  child: Row(
                                    children: [
                                      const Texts.w400(
                                        text: "Internaciones",
                                        fontSize: 10,
                                      ),
                                      const Spacer(),
                                      Obx(
                                        () => Checkbox(
                                          activeColor: Palette.gray,
                                          value: controller.internaciones.value,
                                          onChanged: (value) {
                                            controller.internaciones(value);
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: CustomPadding.horizontal(40),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Texts.w400(
                                      text: "Cirugías",
                                      fontSize: 10,
                                    ),
                                    const Spacer(),
                                    Obx(
                                      () => Checkbox(
                                        activeColor: Palette.gray,
                                        value: controller.cirugias.value,
                                        onChanged: (value) {
                                          controller.cirugias(value);
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: CustomPadding.horizontal(40),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: CustomPadding.horizontal(15),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                                  child: Row(
                                    children: [
                                      const Texts.w400(
                                        text: "Transfuciones",
                                        fontSize: 10,
                                      ),
                                      const Spacer(),
                                      Obx(
                                        () => Checkbox(
                                          activeColor: Palette.gray,
                                          value: controller.trasfusiones.value,
                                          onChanged: (value) {
                                            controller.trasfusiones(value);
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: CustomPadding.horizontal(40),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Texts.w400(
                                      text: "Alérgicos",
                                      fontSize: 10,
                                    ),
                                    const Spacer(),
                                    Obx(
                                      () => Checkbox(
                                        activeColor: Palette.gray,
                                        value: controller.alergicos.value,
                                        onChanged: (value) {
                                          controller.alergicos(value);
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: CustomPadding.horizontal(40),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                        child: const Texts.w400(
                          text: "Enfermedades Existentes",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child:
                            formItem(textController: controller.illsController),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                        child: const Texts.w400(
                          text: "Número de Expediente",
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: CustomPadding.top(10),
            ),
            const Divider(
              thickness: 1,
              color: Palette.gray,
            ),
            const Texts.w400(
              text: "Datos del Apoderado",
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
                          text: "Apellidos y Nombres",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child: formItem(
                            textController: controller.parentNamesController),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                        child: const Texts.w400(
                          text: "Vinculo con el Paciente",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child: SizedBox(
                          height: 22,
                          child: DropdownButtonFormField<String>(
                            onChanged: (value) {
                              controller.relationship(value);
                            },
                            value: controller.relationship(),
                            items: [
                              "Madre",
                              "Padre",
                              "Hermano",
                              "Hermana",
                              "Otro",
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
                Padding(
                  padding: CustomPadding.horizontal(20),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                        child: const Texts.w400(
                          text: "Número de Contacto",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child: formItem(
                            textController: controller.contactNumberController),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                        child: const Texts.w400(
                          text: "DNI",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child:
                            formItem(textController: controller.dniController),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: CustomPadding.fromLTRB(0, 10, 0, 0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Palette.green,
                  ),
                  onPressed: () async {
                    if (controller.validator()) {
                      await Get.find<PersonalInfoController>().createPatient();
                      await controller.createHistory();
                    }
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget formItem({
    bool enabled = true,
    TextEditingController? textController,
  }) {
    return SizedBox(
      height: 25,
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
