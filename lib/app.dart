import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flet/binding.dart';
import "package:flet/router/routers.dart";
import "package:flet/pages/Home/home.dart";
import 'package:flet/translation/translation.dart';
Widget createApp() {
  return ScreenUtilInit(
    designSize: Size(360,690),
    child: GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      defaultTransition: Transition.downToUp,
      transitionDuration: Duration(milliseconds: 200),
      getPages: AppPages.pages,
      translations: Messages(),
      locale: Locale('zh', 'CN'), //设置默认语言
      fallbackLocale: Locale("zh", "CN"), // 在配置错误的情况下,使用的语言
      // builder: EasyLoading.init(),
      initialBinding: AllControllerBinding(),
      home: HomePage(),
    ),
  );
}