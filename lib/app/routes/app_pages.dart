import 'package:brain_monitor/app/modules/patient_list/bindings/assign_binding.dart';
import 'package:brain_monitor/app/modules/patient_list/bindings/clinic_history_binding.dart';
import 'package:brain_monitor/app/modules/patient_list/bindings/diagnosis_binding.dart';
import 'package:brain_monitor/app/modules/patient_list/bindings/personal_info_binding.dart';
import 'package:brain_monitor/app/modules/patient_list/bindings/treatment_binding.dart';
import 'package:brain_monitor/app/modules/patient_list/views/add_clinic_history_view.dart';
import 'package:brain_monitor/app/modules/patient_list/views/add_diagnosis_images_view.dart';
import 'package:brain_monitor/app/modules/patient_list/views/add_diagnosis_info_view.dart';
import 'package:brain_monitor/app/modules/patient_list/views/add_personal_info_view.dart';
import 'package:brain_monitor/app/modules/patient_list/views/add_treatment_view.dart';
import 'package:brain_monitor/app/modules/patient_list/views/assign_state_view.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/monitor/bindings/monitor_binding.dart';
import '../modules/monitor/views/monitor_view.dart';
import '../modules/patient_list/bindings/patient_list_binding.dart';
import '../modules/patient_list/views/patient_list_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/request_list/bindings/request_list_binding.dart';
import '../modules/request_list/views/request_list_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.MONITOR,
      page: () => MonitorView(),
      binding: MonitorBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.PATIENT_LIST,
      page: () => PatientListView(),
      binding: PatientListBinding(),
      children: [
        GetPage(
          name: _Paths.clinicHistory,
          page: () => const AddClinicHistory(),
          binding: ClinicHistoryBinding(),
        ),
        GetPage(
          name: _Paths.diagnosisImages,
          page: () => const AddDiagnosisImages(),
          binding: DiagnosisBinding(),
        ),
        GetPage(
          name: _Paths.diagnosisInfo,
          page: () => const AddDiagnosisInfo(),
          binding: DiagnosisBinding(),
        ),
        GetPage(
          name: _Paths.personalInfo,
          page: () => const AddPersonalInfo(),
          binding: PersonalInfoBinding(),
        ),
        GetPage(
          name: _Paths.treatments,
          page: () => const AddTreatment(),
          binding: TreatmentBinding(),
        ),
        GetPage(
          name: _Paths.assign,
          page: () => const AssignState(),
          binding: AssignBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.REQUEST_LIST,
      page: () => RequestListView(),
      binding: RequestListBinding(),
    ),
  ];
}
