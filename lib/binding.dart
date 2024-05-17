import 'package:get/get.dart';
import 'package:flet/pages/Setting/controller/setting_controller.dart';
class MoviesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingController>(() => SettingController());
    // Get.put<MoviesController>(MoviesController());
  }
}