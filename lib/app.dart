import "package:flet/pages/home/home_page1.dart";
import 'package:flutter/material.dart';
import "package:get/get.dart";
import "package:flet/routes/routes.dart";
import "package:flet/pages/login/login_page.dart";
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Widget createApp() {
  return ScreenUtilInit(
    designSize: Size(432,816),
    child: GetMaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: "/home",
      defaultTransition: Transition.downToUp,
      transitionDuration: Duration(milliseconds: 200),
      getPages: AppPages.pages,
      builder: EasyLoading.init(),
      // home: HomePage(),
    ),
  );
}
