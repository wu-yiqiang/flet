import "package:flutter/cupertino.dart";
import "package:get/get.dart";
import 'package:flet/pages/Home/home.dart';
// import 'package:flet/pages/Home/binding/home_binding.dart';
// import 'package:flet/pages/Movies/binding/movies_binding.dart';
import 'package:flet/pages/Movies/movies.dart';
import "package:flet/pages/Movies/video.dart";
import "package:flet/pages/Movies/play.dart";
import "package:flet/pages/Login/login.dart";
abstract class AppPages {
  static final pages = [
    GetPage(name: "/home", page: () => beforeRouter("/home")),
    GetPage(name: "/movies", page: () => beforeRouter("/movies")),
    GetPage(name: "/video", page: () => beforeRouter("/video")),
    GetPage(name: "/play", page: () => beforeRouter("/play")),
    GetPage(name: "/login", page: () => beforeRouter("/login")),
  ];
// 命名路由
}

Widget beforeRouter(String pageName) {
  // 路由拦截
  // if (pageName == Routes.USER) {
  //   return LoginPage();
  // }
  if (pageName == "/home") return HomePage();
  if (pageName == "/movies") return MoviesPage();
  if (pageName == "/video") return VideoPage();
  if (pageName == "/play") return PlayPage();
  if (pageName == "/login") return LoginPage();
  return HomePage();
}

