import 'package:brain_monitor/app/common/services/auth_service.dart';
import 'package:brain_monitor/app/common/services/navigation_service.dart';
import 'package:brain_monitor/app/utils/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ctrl = Get.find<NavigationService>();

    return Container(
      constraints: const BoxConstraints(minHeight: 50),
      height: screenSize.height / 12,
      color: Palette.primary,
      child: Row(
        children: [
          const Spacer(),
          Obx(
            () => !ctrl.logged()
                ? Row(
                    children: [
                      navBarItem(
                        label: "Iniciar Sesión",
                        current: Navigation.login,
                      ),
                    ],
                  )
                : Row(
                    children: [
                      if (Get.find<AuthService>().payload().role == "D")
                        navBarItem(
                          label: "Pacientes",
                          current: Navigation.patient,
                        ),
                      if (Get.find<AuthService>().payload().role == "A")
                        navBarItem(
                          label: "Solicitudes",
                          current: Navigation.request,
                        ),
                      navBarItem(
                        label: "Monitoreo",
                        current: Navigation.monitor,
                      ),
                      if (Get.find<AuthService>().payload().role == "D")
                        navBarItem(
                          label: "Perfil",
                          current: Navigation.profile,
                        ),
                      if (Get.find<AuthService>().payload().role == "A")
                        navBarItem(
                          label: "Crear Cuenta",
                          current: Navigation.signIn,
                        ),
                    ],
                  ),
          )
        ],
      ),
    );
  }

  Widget navBarItem({
    required String label,
    required Navigation current,
  }) {
    final onHover = false.obs;
    final ctrl = Get.find<NavigationService>();
    return Obx(
      () => InkWell(
        onHover: (value) {
          onHover(value);
        },
        onTap: () {
          ctrl.current(current);
          ctrl.goToPage();
        },
        child: ColoredBox(
          color: onHover()
              ? Colors.black12
              : ctrl.current() == current
                  ? Colors.black12
                  : Palette.primary,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      label,
                      style: GoogleFonts.montserrat(color: Palette.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
