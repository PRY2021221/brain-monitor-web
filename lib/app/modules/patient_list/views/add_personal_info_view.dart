import 'package:brain_monitor/app/common/widgets/navbar.dart';
import 'package:brain_monitor/app/data/patient_module/ubigeo_model.dart';
import 'package:brain_monitor/app/modules/patient_list/controllers/personal_info_controller.dart';
import 'package:brain_monitor/app/utils/components/padding.dart';
import 'package:brain_monitor/app/utils/components/texts.dart';
import 'package:brain_monitor/app/utils/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPersonalInfo extends GetView<PersonalInfoController> {
  const AddPersonalInfo({Key? key}) : super(key: key);

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
              text: "Datos Personales",
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
                          text: "Nombre",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child: formItem(
                          textController: controller.nameController,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                        child: const Texts.w400(
                          text: "Apellido Paterno",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child: formItem(
                          textController: controller.firstLastController,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                        child: const Texts.w400(
                          text: "Apellido Materno",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child: formItem(
                          textController: controller.secondLastController,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                        child: const Texts.w400(
                          text: "Hospital",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child: formItem(
                          textController: controller.hospitalController,
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
                                    text: "Fecha de registro",
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                                  child: formItem(
                                    textController:
                                        controller.registerController,
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
                                    text: "Fecha de nacimiento",
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                                  child: formItem(
                                    textController: controller.birthController,
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
                                    text: "DNI",
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                                  child: formItem(
                                    textController: controller.dniController,
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
                                    text: "Número de Teléfono",
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                                  child: formItem(
                                    textController: controller.numberController,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                        child: const Texts.w400(
                          text: "Correo Electrónico",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child: formItem(
                          textController: controller.emailController,
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
              text: "Datos Geográficos",
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
                          text: "Departamento",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child: Obx(
                          () {
                            return controller.stateDepartment().when(
                                  () => formItem(enabled: false),
                                  loading: () => formItem(enabled: false),
                                  data: (data) => SizedBox(
                                    height: 22,
                                    child: DropdownButtonFormField<UbigeoModel>(
                                      onChanged: (value) async {
                                        controller.departmentId(value);
                                        controller.departmentId.refresh();
                                        controller.getProvincesData();
                                      },
                                      value: controller.departmentId(),
                                      items: data
                                          .map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(
                                                e.name,
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
                                            CustomPadding.horizontal(8),
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
                                );
                          },
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                        child: const Texts.w400(
                          text: "Distrito",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child: Obx(
                          () {
                            return controller.stateDistrict().when(
                                  () => formItem(enabled: false),
                                  loading: () => formItem(enabled: false),
                                  data: (data) => SizedBox(
                                    height: 22,
                                    child: DropdownButtonFormField<UbigeoModel>(
                                      onChanged: (value) async {
                                        controller.districtId(value);
                                        controller.districtId.refresh();
                                      },
                                      value: controller.districtId(),
                                      items: data
                                          .map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(
                                                e.name,
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
                                            CustomPadding.horizontal(8),
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
                                );
                          },
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
                          text: "Provincia",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child: Obx(
                          () {
                            return controller.stateProvince().when(
                                  () => formItem(enabled: false),
                                  loading: () => formItem(enabled: false),
                                  data: (data) => SizedBox(
                                    height: 22,
                                    child: DropdownButtonFormField<UbigeoModel>(
                                      onChanged: (value) async {
                                        controller.provinceId(value);
                                        controller.provinceId.refresh();
                                        controller.getDistrictsData();
                                      },
                                      value: controller.provinceId(),
                                      items: data
                                          .map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(
                                                e.name,
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
                                            CustomPadding.horizontal(8),
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
                                );
                          },
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 20, 0, 0),
                        child: const Texts.w400(
                          text: "Dirección",
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: CustomPadding.fromLTRB(0, 10, 0, 0),
                        child: formItem(
                          textController: controller.addressController,
                        ),
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
                  onPressed: () {
                    if (controller.validator()) {
                      Get.toNamed('/patient-list/clinic_history');
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
