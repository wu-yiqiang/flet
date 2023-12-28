import 'package:flet/pages/splash/splash_binding.dart';
import 'package:flet/pages/splash/splash_pages.dart';
import "package:get/get.dart";
import "package:flet/pages/news/news_page.dart";
import "package:flet/pages/home/home_page.dart";
import "package:flet/pages/home/home_binding.dart";
import "package:flet/pages/weather/weather_page.dart";
import "package:flet/pages/user/user_page.dart";
abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH, page: () => SplashPage(), binding: SplashBinding()),
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.NEWS, page: () => NewsPage()),
    GetPage(name: Routes.WEATHER, page: () => WeatherPage()),
    GetPage(name: Routes.USER, page: () => UserPage()),
  ];
  // 命名路由
}

abstract class Routes {
  static const INITAL ="/";
  static const SPLASH = "/splash";
  static const HOME = "/home";
  static const NEWS = "/news";
  static const WEATHER = "/weather";
  static const USER = "/user";
}