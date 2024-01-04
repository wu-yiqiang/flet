import "package:flet/pages/home/home_page.dart";
import 'package:flutter/material.dart';
import "package:get/get.dart";
import "package:flet/routes/routes.dart";
import "package:flet/pages/login/login_page.dart";

Widget createApp() {
  return GetMaterialApp(
    debugShowCheckedModeBanner: true,
    initialRoute: "/home",
    defaultTransition: Transition.downToUp,
    transitionDuration: Duration(milliseconds: 200),
    getPages: AppPages.pages,
    // home: HomePage(),
  );
}
