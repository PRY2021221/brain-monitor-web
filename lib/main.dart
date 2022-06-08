import 'package:brain_monitor/app/common/services/api_service.dart';
import 'package:brain_monitor/app/common/services/auth_service.dart';
import 'package:brain_monitor/app/common/services/enviroment_service.dart';
import 'package:brain_monitor/app/common/services/navigation_service.dart';
import 'package:brain_monitor/app/routes/app_pages.dart';
import 'package:brain_monitor/app/utils/freezed/environment.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


Future<void> main() async {
  await setUp();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
    );
  }
}

Future<void> setUp() async {
  final EnvironmentService env = EnvironmentService(
    environment: Environment.prod(),
  );
  Get.put(env);

  final ApiService api = ApiService(environment: env);
  Get.put(api);

  api.addInterceptors();
  Get.put(NavigationService());
  Get.put(AuthService());
}
