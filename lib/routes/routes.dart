import 'package:flet/pages/splash/splash_binding.dart';
import 'package:flet/pages/splash/splash_pages.dart';
import "package:flutter/cupertino.dart";
import "package:get/get.dart";
import "package:flet/pages/news/news_page.dart";
import "package:flet/pages/home/home_page.dart";
import "package:flet/pages/home/home_binding.dart";
import "package:flet/pages/weather/weather_page.dart";
import "package:flet/pages/user/user_page.dart";
import "package:flet/pages/login/login_page.dart";
import "package:flet/pages/404/not_found_404.dart";
abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH, page: () => beforeRouter(Routes.SPLASH),binding: SplashBinding()),
    GetPage(name:  Routes.HOME, page: () => beforeRouter(Routes.HOME),binding: HomeBinding()),
    GetPage(name:  Routes.NEWS, page: () => beforeRouter(Routes.NEWS)),
    GetPage(name:  Routes.WEATHER, page: () => beforeRouter(Routes.WEATHER)),
    GetPage(name:  Routes.USER, page: () => beforeRouter(Routes.USER)),
    GetPage(name:  Routes.LOGIN, page: () => beforeRouter(Routes.LOGIN)),
  ];
  // 命名路由
}


Widget beforeRouter (String pageName) {
  // 路由拦截
  if(pageName == Routes.USER) {
    return LoginPage();
  }
  if(pageName == Routes.SPLASH){
    return SplashPage();
  }
  if(pageName == Routes.HOME){
    return HomePage();
  }
  if(pageName == Routes.NEWS){
    return NewsPage();
  }
  if(pageName == Routes.WEATHER){
    return WeatherPage();
  }
  if(pageName == Routes.USER){
    return UserPage();
  }
  return NotFound();
}


abstract class Routes {
  static const INITAL ="/";
  static const SPLASH = "/splash";
  static const HOME = "/home";
  static const NEWS = "/news";
  static const WEATHER = "/weather";
  static const USER = "/user";
  static const LOGIN = "/login";
}