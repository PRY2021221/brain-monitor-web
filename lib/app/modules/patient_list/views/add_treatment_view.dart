import 'package:brain_monitor/app/common/widgets/navbar.dart';
import 'package:brain_monitor/app/data/treatment_module.dart/treatment_results_model.dart';
import 'package:brain_monitor/app/modules/patient_list/controllers/treatment_controller.dart';
import 'package:brain_monitor/app/utils/components/padding.dart';
import 'package:brain_monitor/app/utils/components/texts.dart';
import 'package:brain_monitor/app/utils/functions/custom_dates.dart';
import 'package:brain_monitor/app/utils/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTreatment extends GetView<TreatmentController> {
  const AddTreatment({Key? key}) : super(key: key);

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
              text: "Historia",
              fontSize: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 20, 5, 0),
                                  child: const Texts.w400(
                                    text: "Nombre",
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: CustomPadding.fromLTRB(0, 10, 5, 0),
                                  child: SizedBox(
                                    height: 22,
                                    child: DropdownButtonFormField<String>(
                                      onChanged: (value) {
                                        controller.type(value);
                                      },
                                      value: controller.type(),
                                      items: [
                                        "Cirugía",
                                        "Quimioterapia",
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
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: CustomPadding.fromLTRB(5, 20, 0, 0),
                                  child: const Texts.w400(
                                    text: "Observación",
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: CustomPadding.fromLTRB(5, 10, 0, 0),
                                  child: formItem(
                                    textController: controller.obsController,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Palette.green,
                          ),
                          onPressed: () async {
                            await controller.createTreatment();
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: Text(
                              "Adjuntar",
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
                                  data: (data) => _buildChemotherapiesNumber(
                                    data.totalChemotherapies,
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
                                  data: (data) => _buildSurgeriesNumber(
                                    data.totalSurgeries,
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

  Widget _buildChemotherapiesNumber(int actives) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3,
        child: Padding(
          padding: CustomPadding.vertical(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$actives",
                style: GoogleFonts.montserrat(
                  color: Palette.black,
                  fontSize: 30,
                ),
              ),
              Text(
                "Quimioterapias",
                style: GoogleFonts.montserrat(
                  color: Palette.black,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSurgeriesNumber(int patients) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3,
        child: Padding(
          padding: CustomPadding.vertical(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$patients",
                style: GoogleFonts.montserrat(
                  color: Palette.black,
                  fontSize: 30,
                ),
              ),
              Text(
                "Cirugías",
                style: GoogleFonts.montserrat(
                  color: Palette.black,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
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

  Widget _buildBody(TreatmentResultsModel data) {
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
                      text: data.results[index].treatmentName == "S"
                          ? "Cirugía"
                          : "Quimioterapia",
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Texts.normal(
                      text: CustomDate.dateFormatter(
                        data.results[index].createdAt,
                      ),
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Texts.normal(
                      text: data.results[index].observation,
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
                    text: "Nombre del Tratamiento",
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
                    text: "Observaciones",
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
