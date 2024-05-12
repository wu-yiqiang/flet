import 'package:get/get.dart';
import 'package:flet/pages/Home/controller/home_controller.dart';
class CounterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterController>(() => CounterController());
    // Get.put<Service>(()=> Api());
  }
}