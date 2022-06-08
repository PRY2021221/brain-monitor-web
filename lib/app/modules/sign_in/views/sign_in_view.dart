import 'package:brain_monitor/app/common/widgets/navbar.dart';
import 'package:brain_monitor/app/modules/sign_in/controllers/sign_in_controller.dart';
import 'package:brain_monitor/app/utils/theme/palette.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInView extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.height / 12, 1000),
        child: const NavBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
            child: ColoredBox(
              color: Palette.background,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(300, 50, 300, 20),
                    child: Text(
                      "Crear Cuenta",
                      style: GoogleFonts.montserrat(
                        color: Palette.black,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: signInItem(
                          textController: controller.firstNameController,
                          label: "Nombre",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: signInItem(
                          textController: controller.lastNameController,
                          label: "Apellido",
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: signInItem(
                          textController: controller.dniController,
                          label: "Dni",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: signInItem(
                          textController: controller.tuitionController,
                          label: "N° Colegiatura",
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: signInItem(
                      textController: controller.specialtyController,
                      label: "Especialidad",
                    ),
                  ),
                  Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: signInItem(
                          textController: controller.passwordController,
                          label: "Contraseña",
                          obscured: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: signInItem(
                          textController: controller.confirmController,
                          label: "Confirmar Contraseña",
                          obscured: true,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25, 0, 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Palette.green,
                      ),
                      onPressed: () {
                        if (controller.validator()) {
                          controller.createAccount();
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                        ),
                        child: Text(
                          "REGRISTRAR",
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
          ),
        ),
      ),
    );
  }

  Widget signInItem({
    required String label,
    bool obscured = false,
    required TextEditingController textController,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            label,
            style: GoogleFonts.montserrat(
              color: Palette.black,
              fontSize: 12,
            ),
          ),
        ),
        SizedBox(
          width: 300,
          height: 35,
          child: formItem(
            label: "",
            textController: textController,
            obscured: obscured,
          ),
        ),
      ],
    );
  }

  Widget formItem({
    required String label,
    bool obscured = false,
    required TextEditingController textController,
  }) {
    return TextFormField(
      obscureText: obscured,
      controller: textController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Palette.white,
        hintText: label,
        hintStyle: GoogleFonts.montserrat(
          color: Palette.gray,
          fontSize: 12,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            color: Palette.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            color: Palette.transparent,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            color: Palette.transparent,
          ),
        ),
      ),
    );
  }
}
