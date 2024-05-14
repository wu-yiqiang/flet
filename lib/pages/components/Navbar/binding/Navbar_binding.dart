import 'package:get/get.dart';
import 'package:flet/pages/components/Navbar/controller/Navbar_controller.dart';
class NavbarBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavbarController>(() => NavbarController());
    // Get.put<Service>(()=> Api());
  }
}