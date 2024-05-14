import "package:flutter/cupertino.dart";
import "package:get/get.dart";
import 'package:flet/pages/Home/home.dart';
import 'package:flet/pages/Home/binding/home_binding.dart';
abstract class AppPages {
  static final pages = [
    GetPage(name: "/home", page: () => beforeRouter("/home"), binding: HomeBinding()),
  ];
// 命名路由
}

Widget beforeRouter(String pageName) {
  // 路由拦截
  // if (pageName == Routes.USER) {
  //   return LoginPage();
  // }
  if (pageName == "/home") return HomePage();
  return HomePage();
}

