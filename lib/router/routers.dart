import "package:flutter/cupertino.dart";
import "package:get/get.dart";
import 'package:flet/pages/Home/home.dart';
abstract class AppPages {
  static final pages = [
    GetPage(name: "home", page: () => beforeRouter("home"), binding: SplashBinding()),
  ];
// 命名路由
}

Widget beforeRouter(String pageName) {
  // 路由拦截
  // if (pageName == Routes.USER) {
  //   return LoginPage();
  // }
  if (pageName == "home") return SplashPage();
  return NotFound();
}

abstract class Routes {
  // static const INITAL = "/";
  static const SPLASH = "/splash";
  static const HOME = "/home";
  static const NEWS = "/news";
  static const NEWSDETAIL = "/news-detail";
  static const WEATHER = "/weather";
  static const USER = "/user";
  static const LOGIN = "/login";
  static const USEREDIT = "/user-edit";
}

