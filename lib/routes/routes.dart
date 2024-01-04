import 'package:flet/pages/splash/splash_binding.dart';
import 'package:flet/pages/splash/splash_pages.dart';
import "package:flutter/cupertino.dart";
import "package:get/get.dart";
import "package:flet/pages/news/news_page.dart";
import "package:flet/pages/home/hom.dart";
import "package:flet/pages/home/home_binding.dart";
import "package:flet/pages/weather/weather_page.dart";
import "package:flet/pages/user/user_page.dart";
import "package:flet/pages/login/login_page.dart";
import "package:flet/pages/404/not_found_404.dart";
import "package:flet/pages/user/edit_page.dart";
import "package:flet/pages/news/news_detail.dart";
abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH, page: () => beforeRouter(Routes.SPLASH), binding: SplashBinding()),
    GetPage(name: Routes.HOME, page: () => beforeRouter(Routes.HOME), binding: HomeBinding()),
    GetPage(name: Routes.NEWS, page: () => beforeRouter(Routes.NEWS)),
    GetPage(name: Routes.WEATHER, page: () => beforeRouter(Routes.WEATHER)),
    GetPage(name: Routes.USER, page: () => beforeRouter(Routes.USER)),
    GetPage(name: Routes.USEREDIT, page: () => beforeRouter(Routes.USEREDIT)),
    GetPage(name: Routes.LOGIN, page: () => beforeRouter(Routes.LOGIN)),
    GetPage(name: Routes.NEWSDETAIL, page: () => beforeRouter(Routes.NEWSDETAIL)),
  ];
  // 命名路由
}

Widget beforeRouter(String pageName) {
  // 路由拦截
  // if (pageName == Routes.USER) {
  //   return LoginPage();
  // }
  if (pageName == Routes.SPLASH) return SplashPage();
  if (pageName == Routes.HOME) return Homepage();
  if (pageName == Routes.NEWS) return NewsPage();
  if (pageName == Routes.WEATHER) return WeatherPage();
  if (pageName == Routes.USER) return UserPage();
  if (pageName == Routes.USEREDIT) return EditPage();
  if (pageName == Routes.NEWSDETAIL) return NewsDetail();
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

final List Routess = [
  {
    "path": "/home",
    "title": "home",
    "name": "home",
    "page": Homepage(),
    "meta": {"icon": 'qr',  "auth": false,"TabbarShow": false, "NavbarShow": true}
  },
  {
    "path": "/splash",
    "title": "闪屏页",
    "name": "splash",
    "page": SplashPage(),
    "meta": {"icon": 'qr',"auth": false,"TabbarShow": false, "NavbarShow": true}
  },
  {
    "path": "/weather",
    "title": "天气",
    "name": "weather",
    "page": WeatherPage(),
    "meta": {"icon": 'weather', "auth": false,"TabbarShow": true, "NavbarShow": false}
  },

  {
    "path": "/news",
    "title": "资讯",
    "name": "news",
    "page": NewsPage(),
    "meta": {"icon": 'news', "auth": false,"TabbarShow": true, "NavbarShow": false}
  },
  {
    "path": "/user",
    "title": "用户",
    "name": "user",
    "page": UserPage(),
    "meta": {"icon": 'user', "auth": false,"TabbarShow": true, "NavbarShow": false}
  },
];
