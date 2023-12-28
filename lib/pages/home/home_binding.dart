import 'package:get/get.dart';
import 'package:flet/pages/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeConstroller());
  }
}
