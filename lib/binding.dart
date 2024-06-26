import 'package:get/get.dart';
import 'package:flet/pages/User/controller/user_controller.dart';
import 'package:flet/pages/Home/controller/home_controller.dart';
import 'package:flet/pages/Movies/controller/movies_controller.dart';
import 'package:flet/pages/Im/controller/im_controller.dart';
import 'package:flet/pages/Ai/controller/ai_controller.dart';
class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(() => UserController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<MoviesController>(() => MoviesController());
    Get.lazyPut<ImController>(() => ImController());
    Get.lazyPut<AiController>(() => AiController());
  }
}