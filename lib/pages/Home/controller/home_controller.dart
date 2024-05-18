import 'package:get/get.dart';
class HomeController extends GetxController {
  var currentIndex = 0.obs;
  void setCurrent(No) {
    currentIndex = No;
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
