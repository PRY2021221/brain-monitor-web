import 'package:brain_monitor/app/common/widgets/navbar.dart';
import 'package:brain_monitor/app/modules/monitor/controllers/monitor_controller.dart';
import 'package:brain_monitor/app/utils/components/texts.dart';
import 'package:brain_monitor/app/utils/theme/palette.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MonitorView extends GetView<MonitorController> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.height / 12, 1000),
        child: const NavBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Material(
                                elevation: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        "Intervención",
                                        style: GoogleFonts.montserrat(
                                          color: Palette.black,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 10,
                                          child:
                                              DropdownButtonFormField<String>(
                                            onChanged: (value) {
                                              controller.intervention(value);
                                              controller
                                                  .getDashboardAdminData();
                                            },
                                            value: controller.intervention(),
                                            items: [
                                              "Todas",
                                              "Cirugía",
                                              "Quimioterapia",
                                            ]
                                                .map(
                                                  (e) => DropdownMenuItem(
                                                    value: e,
                                                    child: Text(
                                                      e,
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        color: Palette.black,
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                            decoration: const InputDecoration(
                                              contentPadding: EdgeInsets.all(8),
                                              enabledBorder:
                                                  OutlineInputBorder(),
                                              focusedBorder:
                                                  OutlineInputBorder(),
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Material(
                                elevation: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        "Priorización",
                                        style: GoogleFonts.montserrat(
                                          color: Palette.black,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 10,
                                          child:
                                              DropdownButtonFormField<String>(
                                            onChanged: (value) {
                                              controller.prioritization(value);
                                              controller
                                                  .getDashboardAdminData();
                                            },
                                            value: controller.prioritization(),
                                            items: [
                                              "Todas",
                                              "Alta",
                                              "Baja",
                                              "Media",
                                            ]
                                                .map(
                                                  (e) => DropdownMenuItem(
                                                    value: e,
                                                    child: Text(
                                                      e,
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        color: Palette.black,
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                            decoration: const InputDecoration(
                                              contentPadding: EdgeInsets.all(8),
                                              enabledBorder:
                                                  OutlineInputBorder(),
                                              focusedBorder:
                                                  OutlineInputBorder(),
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Material(
                                elevation: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        "Estado",
                                        style: GoogleFonts.montserrat(
                                          color: Palette.black,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 10,
                                          child:
                                              DropdownButtonFormField<String>(
                                            onChanged: (value) {
                                              controller.status(value);
                                              controller
                                                  .getDashboardAdminData();
                                            },
                                            value: controller.status(),
                                            items: [
                                              "Todas",
                                              "Activo",
                                              "Inactivo",
                                            ]
                                                .map(
                                                  (e) => DropdownMenuItem(
                                                    value: e,
                                                    child: Text(
                                                      e,
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        color: Palette.black,
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                            decoration: const InputDecoration(
                                              contentPadding: EdgeInsets.all(8),
                                              enabledBorder:
                                                  OutlineInputBorder(),
                                              focusedBorder:
                                                  OutlineInputBorder(),
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Material(
                                elevation: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        "Sexo",
                                        style: GoogleFonts.montserrat(
                                          color: Palette.black,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 10,
                                          child:
                                              DropdownButtonFormField<String>(
                                            onChanged: (value) {
                                              controller.sex(value);
                                              controller
                                                  .getDashboardAdminData();
                                            },
                                            value: controller.sex(),
                                            items: [
                                              "Todas",
                                              "Hombre",
                                              "Mujer",
                                            ]
                                                .map(
                                                  (e) => DropdownMenuItem(
                                                    value: e,
                                                    child: Text(
                                                      e,
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        color: Palette.black,
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                            decoration: const InputDecoration(
                                              contentPadding: EdgeInsets.all(8),
                                              enabledBorder:
                                                  OutlineInputBorder(),
                                              focusedBorder:
                                                  OutlineInputBorder(),
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
                      () {
                        return controller.state().when(
                              () => const SizedBox(),
                              loading: () => const Center(
                                child: CircularProgressIndicator(
                                  color: Palette.green,
                                ),
                              ),
                              data: (data) =>
                                  _buildPatientsNumber(data.totalPatients),
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
                              data: (data) =>
                                  _buildActivePatients(data.activePatients),
                            );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: _buildSecondBlock(),
            ),
            Expanded(
              flex: 4,
              child: _buildPatientsInterventions(),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildActivePatients(int actives) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3,
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
              "Pacientes Activos",
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

  Widget _buildPatientsNumber(int patients) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3,
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
              "Número de Pacientes",
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

  Widget _buildPatientsInterventions() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 30 / 1,
        child: Center(
          child: Material(
            elevation: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Edad de pacientes con intervenciones",
                    style: GoogleFonts.montserrat(
                      color: Palette.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 16.0,
                      left: 6.0,
                      top: 10,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 9,
                          child: Obx(
                            () {
                              return controller.state().when(
                                    () => const SizedBox(),
                                    loading: () => const Center(
                                      child: CircularProgressIndicator(
                                        color: Palette.green,
                                      ),
                                    ),
                                    data: (data) => LineChart(
                                      sampleData1,
                                      swapAnimationDuration:
                                          const Duration(milliseconds: 250),
                                    ),
                                  );
                            },
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tipo de Intervención",
                                  style: GoogleFonts.montserrat(
                                    color: Palette.black,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Indicator(
                                  color: Color(0xff0293ee),
                                  text: 'Cirugía',
                                  isSquare: false,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Indicator(
                                  color: Color.fromARGB(255, 50, 5, 201),
                                  text: 'Quimioterapia',
                                  isSquare: false,
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSecondBlock() {
    return Row(
      mainAxisSize: MainAxisSize.min,
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
                    data: (data) => _buildCancerPercent(
                      n: data.totalPatientsWithCancer.n!,
                      y: data.totalPatientsWithCancer.y!,
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
                    data: (data) => _buildPrioritizationPercent(
                      a: data.percentageOfPrioritizations.h!,
                      b: data.percentageOfPrioritizations.l!,
                      m: data.percentageOfPrioritizations.m!,
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
                    data: (data) => _buildStatePercent(
                      a: data.percentageOfPatientsStatus.a!,
                      i: data.percentageOfPatientsStatus.i!,
                    ),
                  );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildStatePercent({required int i, required int a}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Center(
          child: Material(
            elevation: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Porcentaje de Estado de Pacientes %",
                    style: GoogleFonts.montserrat(
                      color: Palette.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 2,
                      child: i + a == 0
                          ? const Center(
                              child: Texts.w500(
                                text: "Sin datos ",
                                fontSize: 12,
                              ),
                            )
                          : AspectRatio(
                              aspectRatio: 2 / 1,
                              child: PieChart(
                                PieChartData(
                                  borderData: FlBorderData(
                                    show: false,
                                  ),
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 20,
                                  sections: showingThirdSections(a: a, i: i),
                                ),
                              ),
                            ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Estado",
                            style: GoogleFonts.montserrat(
                              color: Palette.black,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Indicator(
                            color: Color(0xff0293ee),
                            text: 'Activo',
                            isSquare: false,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Indicator(
                            color: Color.fromARGB(255, 50, 5, 201),
                            text: 'Inactivo',
                            isSquare: false,
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPrioritizationPercent({
    required int m,
    required int b,
    required int a,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Center(
          child: Material(
            elevation: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Porcentaje de Priorización de Pacientes %",
                    style: GoogleFonts.montserrat(
                      color: Palette.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 2,
                      child: a + b + m == 0
                          ? const Center(
                              child: Texts.w500(
                                text: "Sin datos ",
                                fontSize: 12,
                              ),
                            )
                          : AspectRatio(
                              aspectRatio: 2 / 1,
                              child: PieChart(
                                PieChartData(
                                  borderData: FlBorderData(
                                    show: false,
                                  ),
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 0,
                                  sections:
                                      showingSecondSections(a: a, b: b, m: m),
                                ),
                              ),
                            ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Prioridad",
                            style: GoogleFonts.montserrat(
                              color: Palette.black,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Indicator(
                            color: Color(0xff0293ee),
                            text: 'Alta',
                            isSquare: false,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Indicator(
                            color: Color(0xfff8b250),
                            text: 'Baja',
                            isSquare: false,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Indicator(
                            color: Color.fromARGB(255, 50, 5, 201),
                            text: 'Media',
                            isSquare: false,
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          //color:
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCancerPercent({
    required int y,
    required int n,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Center(
          child: Material(
            elevation: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Porcentaje de Pacientes con Cáncer Cerebral %",
                    style: GoogleFonts.montserrat(
                      color: Palette.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 2,
                      child: y + n == 0
                          ? const Center(
                              child: Texts.w500(
                                text: "Sin datos ",
                                fontSize: 12,
                              ),
                            )
                          : AspectRatio(
                              aspectRatio: 2 / 1,
                              child: PieChart(
                                PieChartData(
                                  borderData: FlBorderData(
                                    show: false,
                                  ),
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 20,
                                  sections: showingFirstSections(n: n, y: y),
                                ),
                              ),
                            ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Tiene Cancer",
                            style: GoogleFonts.montserrat(
                              color: Palette.black,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Indicator(
                            color: Color(0xff0293ee),
                            text: 'Si',
                            isSquare: false,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Indicator(
                            color: Color.fromARGB(255, 50, 5, 201),
                            text: 'No',
                            isSquare: false,
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingFirstSections(
      {required int y, required int n}) {
    return List.generate(
      2,
      (i) {
        final isTouched = i == controller.touchedIndex();
        const fontSize = 10.0;
        const radius = 20.0;
        switch (i) {
          case 0:
            return PieChartSectionData(
              color: const Color(0xff0293ee),
              value: y * 1.0,
              title: "$y (${(y / (y + n) * 100).toStringAsFixed(2)}%)",
              radius: radius,
              titlePositionPercentageOffset: 2,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Palette.grayText,
              ),
            );
          case 1:
            return PieChartSectionData(
              color: const Color.fromARGB(255, 50, 5, 201),
              value: n * 1.0,
              title: "$n (${(n / (y + n) * 100).toStringAsFixed(2)}%)",
              radius: radius,
              titlePositionPercentageOffset: 2,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Palette.grayText,
              ),
            );
          default:
            throw Error();
        }
      },
    );
  }

  List<PieChartSectionData> showingSecondSections({
    required int a,
    required int b,
    required int m,
  }) {
    return List.generate(
      3,
      (i) {
        final isTouched = i == controller.touchedIndex();
        const fontSize = 10.0;

        const radius = 40.0;
        switch (i) {
          case 0:
            return PieChartSectionData(
              color: const Color(0xff0293ee),
              value: a * 0.1,
              title: "$a (${(a / (a + b + m) * 100).toStringAsFixed(2)}%)",
              radius: radius,
              titlePositionPercentageOffset: 1.25,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Palette.grayText,
              ),
            );
          case 1:
            return PieChartSectionData(
              color: const Color(0xfff8b250),
              value: b * 0.1,
              title: "$b (${(b / (a + b + m) * 100).toStringAsFixed(2)}%)",
              radius: radius,
              titlePositionPercentageOffset: 1.25,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Palette.grayText,
              ),
            );
          case 2:
            return PieChartSectionData(
              color: const Color.fromARGB(255, 50, 5, 201),
              value: m * 0.1,
              title: "$m (${(m / (a + b + m) * 100).toStringAsFixed(2)}%)",
              radius: radius,
              titlePositionPercentageOffset: 1.25,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Palette.grayText,
              ),
            );
          default:
            throw Error();
        }
      },
    );
  }

  List<PieChartSectionData> showingThirdSections({
    required int a,
    required int i,
  }) {
    return List.generate(
      2,
      (k) {
        final isTouched = k == controller.touchedIndex();
        const fontSize = 10.0;

        const radius = 20.0;
        switch (k) {
          case 0:
            return PieChartSectionData(
              color: const Color(0xff0293ee),
              value: a * 1.0,
              title: "$a (${(a / (a + i) * 100).toStringAsFixed(2)}%)",
              radius: radius,
              titlePositionPercentageOffset: 2,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Palette.grayText,
              ),
            );
          case 1:
            return PieChartSectionData(
              color: const Color.fromARGB(255, 50, 5, 201),
              value: i * 1.0,
              title: "$i (${(i / (a + i) * 100).toStringAsFixed(2)}%)",
              radius: radius,
              titlePositionPercentageOffset: 2,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Palette.grayText,
              ),
            );
          default:
            throw Error();
        }
      },
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 17,
        maxY: 10,
        minY: 0,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
          axisNameWidget: Text(
            "Edad",
            style: GoogleFonts.montserrat(fontSize: 12),
          ),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          axisNameWidget: Text(
            "Cirugías y Quimio",
            style: GoogleFonts.montserrat(fontSize: 12),
          ),
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        controller.lineChartBarData1_1,
        controller.lineChartBarData1_2,
      ];

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff75729e),
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
    String text;

    if (value % 2 == 0) {
      text = value.toString();
    } else {
      text = " ";
    }
    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff72719b),
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
    Widget text;
    if (value % 2 == 0) {
      text = Text(value.toString(), style: style);
    } else {
      text = const Text(" ", style: style);
    }
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Color(0xff4e4965), width: 4),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );
}

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key? key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 10,
    this.textColor = const Color(0xff505050),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: textColor),
        )
      ],
    );
  }
}
