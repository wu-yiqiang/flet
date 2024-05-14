import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:flet/router/routers.dart";
Widget createApp() {
  return ScreenUtilInit(
    designSize: Size(360,690),
    child: GetMaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: "/home",
      defaultTransition: Transition.downToUp,
      transitionDuration: Duration(milliseconds: 200),
      getPages: AppPages.pages,
      // builder: EasyLoading.init(),
      // home: HomePage(),
    ),
  );
}