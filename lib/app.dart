import 'package:flutter/material.dart';
import "package:get/get.dart";
import "package:flet/routes/routes.dart";

Widget createApp() {
  return GetMaterialApp(
    initialRoute: Routes.SPLASH,
    getPages: AppPages.pages,
  );
}
