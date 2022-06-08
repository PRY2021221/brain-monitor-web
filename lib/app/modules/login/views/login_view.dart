import 'package:brain_monitor/app/common/services/navigation_service.dart';
import 'package:brain_monitor/app/common/widgets/navbar.dart';
import 'package:brain_monitor/app/utils/theme/palette.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final keep = false.obs;
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
                    padding: const EdgeInsets.fromLTRB(100, 50, 100, 50),
                    child: Text(
                      "Inicio de Sesión",
                      style: GoogleFonts.montserrat(
                        color: Palette.black,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: SizedBox(
                      width: 300,
                      height: 35,
                      child: formItem(
                        label: "DNI",
                        textController: controller.dniController,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: SizedBox(
                      width: 300,
                      height: 35,
                      child: formItem(
                        label: "Contraseña",
                        textController: controller.passwordController,
                        obscured: true,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(
                        () => Switch(
                          value: keep(),
                          onChanged: (value) {
                            keep(value);
                          },
                        ),
                      ),
                      Text(
                        "Mantener sesión iniciada",
                        style: GoogleFonts.montserrat(
                          color: Palette.grayText,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Palette.green,
                    ),
                    onPressed: () async {
                      if (controller.validator()) {
                        controller.signIn();
                      }
                      //Get.find<NavigationService>().login();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      child: Text(
                        "INGRESAR",
                        style: GoogleFonts.montserrat(
                          color: Palette.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 50),
                    child: TextButton(
                      child: Text(
                        "Recuperar Contraseña",
                        style: GoogleFonts.montserrat(
                          color: Palette.grayText,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onPressed: () {},
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

  TextFormField formItem({
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
