import 'package:brain_monitor/app/common/widgets/navbar.dart';
import 'package:brain_monitor/app/data/cancer_detector/diagnostic_results.dart';
import 'package:brain_monitor/app/data/patient_module/magnetic_resonance_model.dart';
import 'package:brain_monitor/app/modules/patient_list/controllers/diagnosis_controller.dart';
import 'package:brain_monitor/app/utils/components/padding.dart';
import 'package:brain_monitor/app/utils/components/texts.dart';
import 'package:brain_monitor/app/utils/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AddDiagnosisInfo extends GetView<DiagnosisController> {
  const AddDiagnosisInfo({Key? key}) : super(key: key);

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
        child: Obx(
          () {
            return controller.diagnosticState().when(
                  () => const SizedBox(),
                  loading: () => Center(
                    child: Column(
                      children: const [
                        Spacer(),
                        CircularProgressIndicator(
                          color: Palette.green,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Texts.w400(
                          text: "Analizando Resonancias Magnéticas",
                          fontSize: 15,
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  data: (data) => _buildBody(
                    data,
                  ),
                );
          },
        ),
      ),
    );
  }

  Column _buildBody(List<DiagnosticResults> data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        itemCount: controller.results().length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: CustomPadding.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            child: InkWell(
                              onTap: () {
                                controller.selectedImage(index);
                              },
                              child: Image.network(
                                controller.results[index].resonanceImageLink,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Obx(
                              () => Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.network(
                                      controller
                                          .results[controller.selectedImage()]
                                          .resonanceImageLink,
                                    ),
                                  ),
                                  ...List.generate(
                                    data[controller.selectedImage()]
                                        .output
                                        .objects
                                        .length,
                                    (index) => Align(
                                      alignment: Alignment.topLeft,
                                      child: CustomPaint(
                                        painter: MyPainter(
                                          points: processVertices(
                                            data[controller.selectedImage()]
                                                .output
                                                .objects[index]
                                                .maskVertices,
                                          ),
                                          color: controller.colors[index],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Obx(
                              () => Column(
                                children: [
                                  const Texts.w400(
                                    text: "Precisión",
                                    fontSize: 12,
                                  ),
                                  ...List.generate(
                                    data[controller.selectedImage()]
                                        .output
                                        .objects
                                        .length,
                                    (index) => Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: LinearPercentIndicator(
                                        animation: true,
                                        lineHeight: 20.0,
                                        animationDuration: 2500,
                                        percent:
                                            data[controller.selectedImage()]
                                                .output
                                                .objects[index]
                                                .confidence,
                                        center: Texts.w400(
                                          text:
                                              (data[controller.selectedImage()]
                                                          .output
                                                          .objects[index]
                                                          .confidence *
                                                      100)
                                                  .toStringAsFixed(2),
                                          fontSize: 8,
                                        ),
                                        barRadius: Radius.zero,
                                        progressColor: controller.colors[index],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Texts.w500(
                        text: "Diagnóstico",
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: formItem(),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Texts.w500(
                        text: "Tratamiento",
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: formItem(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Padding(
            padding: CustomPadding.fromLTRB(0, 20, 0, 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Palette.green,
              ),
              onPressed: () async {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Text(
                  "Guardar",
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
    );
  }

  Widget formItem({
    bool enabled = true,
    TextEditingController? textController,
  }) {
    return SizedBox(
      child: TextFormField(
        style: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        minLines: 6,
        maxLines: 20,
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

  List<Offset> processVertices(List<List<List<int>>> vertices) {
    List<Offset> ans = [];
    final list = vertices[0];
    for (final i in list) {
      ans.add(
        Offset(
          i[0] * 1.0,
          i[1] * 1.0,
        ),
      );
    }
    ans.add(
      Offset(
        list[0][0] * 1.0,
        list[0][1] * 1.0,
      ),
    );
    return ans;
  }
}
