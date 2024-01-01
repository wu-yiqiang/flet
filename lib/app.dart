import 'package:flutter/material.dart';
import "package:get/get.dart";
import "package:flet/routes/routes.dart";
import "package:flet/pages/login/login_page.dart";

Widget createApp() {
  return GetMaterialApp(
    debugShowCheckedModeBanner: true,
    initialRoute: "/home",
    defaultTransition: Transition.rightToLeftWithFade,
    // 在这里做拦截
    getPages: AppPages.pages,
  );
}
